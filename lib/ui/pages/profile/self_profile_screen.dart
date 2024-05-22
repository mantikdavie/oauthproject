import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oauthproject/bloc/auth/auth_status_bloc.dart';
import 'package:oauthproject/model/self_profile/self_profile.dart';
import 'package:oauthproject/ui/pages/profile/bloc/self_profile_bloc.dart';
import 'package:oauthproject/ui/widgets/auth_status_icon_widget.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/local_storage.dart';

class SelfProfileScreen extends StatelessWidget {
  const SelfProfileScreen({super.key});

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
        child: BlocBuilder<SelfProfileBloc, SelfProfileState>(
          builder: (context, state) {
            if (state is ProfileInitial) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProfileLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProfileError) {
              return Center(child: Text('Error Message: \n${state.message}'));
            } else if (state is ProfileLoaded) {
              return ProfileListView(profile: state.crewProfile);
            } else {
              return const Center(child: Text('Unknown Error '));
            }
          },
        ),
      ),
    );
  }
}

class ProfileListView extends StatefulWidget {
  final SelfProfile profile;

  const ProfileListView({super.key, required this.profile});

  @override
  State<ProfileListView> createState() => _ProfileListViewState();
}

class _ProfileListViewState extends State<ProfileListView> {
  Image defaultImage = Image.asset("assets/icon/pilot_icon.png", height: 150);
  late Image crewImage;

  @override
  void initState() {
    crewImage = defaultImage;
    getCrewPicture();
    super.initState();
  }

  void getCrewPicture() async {
    final profilePicturePath =
        widget.profile.profilePicture!.filename.toString();

    final List<dynamic> profilePictures;

    String crewPictureString;
    crewPictureString = await readFromCache('self_profile_picture');

    if (crewPictureString == '') {
      profilePictures = await getBaseRequest(
          'cls-api/v1/profile/pictureBatchGet',
          {'fileList': profilePicturePath});
      crewPictureString = profilePictures.first['data'];
      saveStringToCache('self_profile_picture', crewPictureString);
    }

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        crewImage,
        SelfProfileItemsWidget(
            title: 'Badge Name:', detail: widget.profile.badgeName ?? ''),
        SelfProfileItemsWidget(
            title: 'Surname:', detail: widget.profile.surname ?? ''),
        SelfProfileItemsWidget(
            title: 'Other Name:', detail: widget.profile.otherName ?? ''),
        SelfProfileItemsWidget(
            title: 'GalaxyId:', detail: widget.profile.galacxyId ?? ''),
        SelfProfileItemsWidget(
            title: 'Current ERN:', detail: widget.profile.currentErn ?? ''),
        SelfProfileItemsWidget(
            title: 'Seniority Order:',
            detail: widget.profile.seniorityOrder.toString()),
        // SelfProfileItemsWidget(
        //     child: Text(
        //         'Senority Order: ${widget.profile.seniorityOrder.toString()}')),
      ],
    );
  }
}

class SelfProfileItemsWidget extends StatelessWidget {
  final String title;
  final String detail;
  final double? height;
  final double? titleWidth;
  final double? detailWidth;

  const SelfProfileItemsWidget({
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
