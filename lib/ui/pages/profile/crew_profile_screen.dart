import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oauthproject/model/flight_crew_list/crew_profile.dart';
import 'package:oauthproject/model/flight_crew_list/flight_crew.dart';
import 'package:oauthproject/model/public_roster_crew_results/public_roster_crew_results.dart';
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

  @override
  void initState() {
    rosterPrivacy = widget.crewProfile.privacy!.rosterPrivacy!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 120, child: Text("Badge Name: ")),
                  SizedBox(
                      width: 240,
                      child: Text("${widget.crewProfile.badgeName}"))
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 120, child: Text("Surname: ")),
                  SizedBox(
                      width: 240, child: Text("${widget.crewProfile.surname}"))
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 120, child: Text("Fleet and Rank: ")),
                  SizedBox(
                      width: 240,
                      child: Text(
                          "${widget.crewProfile.fleet}${widget.crewProfile.rankCode}${widget.crewProfile.crewSeniority}"))
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 120, child: Text("crew id: ")),
                  SizedBox(
                      width: 240, child: Text("${widget.crewProfile.crewId}"))
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 120, child: Text("galacxy id: ")),
                  SizedBox(
                      width: 240,
                      child: Text("${widget.crewProfile.galacxyId}"))
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 120, child: Text("Current ERN: ")),
                  SizedBox(
                      width: 240,
                      child: Text("${widget.crewProfile.currentErn}"))
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 120, child: Text("Block Hours: ")),
                  SizedBox(width: 240, child: Text(totalblockHours.toString()))
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: rosterPrivacy != "all"
                        ? null
                        : () async {
                            totalblockHours = await getPublicRosterApi(
                                crewErn:
                                    widget.crewProfile.currentErn.toString());
                            setState(() {});
                          },
                    child: const Text("Get Hours"))
              ],
            ),
          ],
        ),
      ),
    );
  }
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
