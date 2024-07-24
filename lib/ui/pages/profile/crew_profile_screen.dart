import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oauthproject/model/flight_crew_list/crew_profile.dart';
import 'package:oauthproject/model/flight_crew_list/flight_crew.dart';
import 'package:oauthproject/model/public_roster_crew_results/public_roster_crew_results.dart';
import 'package:oauthproject/ui/pages/crew_roster/bloc/crew_roster_bloc.dart';
import 'package:oauthproject/ui/widgets/auth_status_icon_widget.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/local_storage.dart';

class CrewProfileScreen extends StatefulWidget {
  // final FlightCrew flightCrew;
  final CrewProfile crewProfile;

  const CrewProfileScreen({super.key, required this.crewProfile});

  @override
  State<CrewProfileScreen> createState() => _CrewProfileScreenState();
}

class _CrewProfileScreenState extends State<CrewProfileScreen> {
  late final String rosterPrivacy;
  double totalblockHours = 0.0;
  late CrewProfile crewProfile;
  Image defaultImage = Image.asset("assets/icon/pilot_icon.png", height: 150);
  late Image crewImage;

  @override
  void initState() {
    crewProfile = widget.crewProfile;
    rosterPrivacy = crewProfile.privacy?.rosterPrivacy! ?? 'none';
    crewImage = defaultImage;
    getCrewPicture();
    super.initState();
  }

  void getCrewPicture() async {
    final profilePicturePath = crewProfile.profilePicture!.filename.toString();

    final List<dynamic> profilePictures = await getBaseRequest(
        'cls-api/v1/profile/pictureBatchGet', {'fileList': profilePicturePath});

    final crewPictureString = profilePictures.first['data'];

    try {
      final codec =
          await instantiateImageCodec(base64Decode(crewPictureString));
      if (codec.frameCount > 0) {
        crewImage = Image.memory(
          base64Decode(crewPictureString),
          scale: 0.75,
        );
        setState(() {});
      } else {
        crewImage = defaultImage;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CrewRosterBloc, CrewRosterState>(
      listener: (context, state) {
        if (state is CrewRosterLoaded) {
          context.push('/crew-roster', extra: state.rosters);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: const [AuthStatusIcon()],
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              crewImage,
              CrewProfileItemsWidget(
                  title: "Badge Name: ", detail: '${crewProfile.badgeName}'),
              CrewProfileItemsWidget(
                  title: "Surname:", detail: '${crewProfile.surname}'),
              CrewProfileItemsWidget(
                  title: "Fleet and Rank:",
                  detail:
                      '${crewProfile.fleet}${crewProfile.rankCode}${crewProfile.crewSeniority}'),
              CrewProfileItemsWidget(
                  title: "Crew ID:", detail: "${crewProfile.crewId}"),
              CrewProfileItemsWidget(
                  title: "ERN:", detail: "${crewProfile.currentErn}"),
              CrewProfileItemsWidget(
                  title: "Base Port:", detail: "${crewProfile.baseport}"),
              CrewProfileItemsWidget(
                  title: "Company Email:",
                  detail: "${crewProfile.companyEmail}"),
              CrewProfileItemsWidget(
                  title: "Block Hours:", detail: "$totalblockHours"),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: rosterPrivacy != "all"
                      ? null
                      : () async {
                          context.read<CrewRosterBloc>().add(
                              RequestPublicRoster(
                                  crewErn: crewProfile.currentErn.toString()));
                        },
                  child: const Text("Get Roster")),
              BlocBuilder<CrewRosterBloc, CrewRosterState>(
                builder: (context, state) {
                  debugPrint('Crew Roster Bloc State: $state');
                  if (state is CrewRosterLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is CrewRosterError) {
                    return Center(child: Text(state.errorMessage.toString()));
                  } else {
                    return Container();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CrewProfileItemsWidget extends StatelessWidget {
  final String title;
  final String detail;
  final double? height;
  final double? titleWidth;
  final double? detailWidth;

  const CrewProfileItemsWidget({
    super.key,
    required this.title,
    required this.detail,
    this.height,
    this.titleWidth,
    this.detailWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 2, child: Text(title, textAlign: TextAlign.start)),
          Expanded(
              flex: 3,
              child: Text(detail, maxLines: 2, textAlign: TextAlign.start))
        ],
      ),
    );
  }
}

Future<double> calculateTotalBlockHours(PublicRosterCrewResults rosters) async {
  List<double> blockHours = [];

  rosters.dutyList?.forEach((duty) {
    if (duty.flight != null) {
      blockHours.add(duty.flight!.blockHours!.toDouble());
    }
  });

  debugPrint(blockHours.toString());

  final double totalBlockHours;
  if (blockHours.isNotEmpty) {
    totalBlockHours = blockHours.reduce((value, element) => value + element);
  } else {
    totalBlockHours = 0;
  }
  return totalBlockHours;
}

Future<double> getPublicRosterApi({required String crewErn}) async {
  final selfErn = await readFromCache('ern');
  final respJson = await getBaseRequest(
      'cls-api/v1/duties', {'ern': selfErn, 'publicRosterErn': crewErn});
  // final resp =
  //     await rootBundle.loadString("assets/mockup/public_roster_01.json");
  // final respJson = json.decode(resp);
  final PublicRosterCrewResults rosters =
      PublicRosterCrewResults.fromMap(respJson);

  if (respJson['status'] == "ok") {
    return await calculateTotalBlockHours(rosters);
  } else {
    debugPrint(respJson['errorMessage']);
    return -1.0;
  }
}
