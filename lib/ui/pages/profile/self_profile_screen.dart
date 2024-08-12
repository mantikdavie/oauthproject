import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: const [AuthStatusIcon()],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
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
              return ProfileContent(profile: state.crewProfile);
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

class ProfileContent extends StatelessWidget {
  final SelfProfile profile;

  const ProfileContent({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ProfileHeader(profile: profile),
        const SizedBox(height: 16),
        PersonalInfoSection(profile: profile),
        const SizedBox(height: 16),
        ProfessionalInfoSection(profile: profile),
        const SizedBox(height: 16),
        ContactInfoSection(profile: profile),
        const SizedBox(height: 16),
        EmploymentDetailsSection(profile: profile),
        const SizedBox(height: 16),
        QualificationsSection(profile: profile)
      ],
    );
  }
}

class ProfileHeader extends StatefulWidget {
  final SelfProfile profile;

  const ProfileHeader({Key? key, required this.profile}) : super(key: key);

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  late Future<String> _crewImageFuture;

  @override
  void initState() {
    super.initState();
    _crewImageFuture = _getCrewPicture();
  }

  Future<String> _getCrewPicture() async {
    final profilePicturePath = widget.profile.profilePicture?.filename ?? '';
    String crewPictureString = await readFromCache('self_profile_picture');

    if (crewPictureString.isEmpty) {
      final profilePictures = await getBaseRequest(
          'cls-api/v1/profile/pictureBatchGet',
          {'fileList': profilePicturePath});
      crewPictureString = profilePictures.first['data'];
      await saveStringToCache('self_profile_picture', crewPictureString);
    }

    return crewPictureString;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<String>(
          future: _crewImageFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return _buildLoadingAvatar();
            } else if (snapshot.hasError || !snapshot.hasData) {
              return _buildErrorAvatar();
            } else {
              return _buildCrewAvatar(snapshot.data!);
            }
          },
        ),
        const SizedBox(height: 16),
        Text(
          widget.profile.badgeName ?? '',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }

  Widget _buildLoadingAvatar() {
    return const CircleAvatar(
      radius: 75,
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildErrorAvatar() {
    return const CircleAvatar(
      radius: 75,
      backgroundImage: AssetImage("assets/icon/pilot_icon.png"),
    );
  }

  Widget _buildCrewAvatar(String imageData) {
    return Hero(
      tag: 'profileImage',
      child: GestureDetector(
        onTap: () => _showFullScreenImage(imageData),
        child: CircleAvatar(
          radius: 75,
          backgroundImage: MemoryImage(base64Decode(imageData)),
        ),
      ),
    );
  }

  void _showFullScreenImage(String imageData) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Hero(
            tag: 'profileImage',
            child: Image.memory(base64Decode(imageData)),
          ),
        ),
      ),
    ));
  }
}

class PersonalInfoSection extends StatelessWidget {
  final SelfProfile profile;

  const PersonalInfoSection({Key? key, required this.profile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Personal Information',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            InfoRow(title: 'Badge Name', value: profile.badgeName ?? ''),
            InfoRow(title: 'Other Name', value: profile.otherName ?? ''),
            InfoRow(title: 'Surname', value: profile.surname ?? ''),
            InfoRow(title: 'Date of Birth', value: profile.dateOfBirth ?? ''),
            InfoRow(title: 'Gender', value: profile.gender ?? ''),
          ],
        ),
      ),
    );
  }
}

class ProfessionalInfoSection extends StatelessWidget {
  final SelfProfile profile;

  const ProfessionalInfoSection({Key? key, required this.profile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Professional Information',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            InfoRow(title: 'Current ERN', value: profile.currentErn ?? ''),
            InfoRow(title: 'Crew ID', value: profile.crewId ?? ''),
            InfoRow(title: 'Rank Code', value: profile.rankCode ?? ''),
            InfoRow(
                title: 'Seniority Order',
                value: profile.seniorityOrder?.toString() ?? ''),
            InfoRow(title: 'Fleet', value: profile.fleet ?? ''),
          ],
        ),
      ),
    );
  }
}

class ContactInfoSection extends StatelessWidget {
  final SelfProfile profile;

  const ContactInfoSection({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Contact Information',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            InfoRow(title: 'Email', value: profile.email ?? ''),
            InfoRow(title: 'Mobile Phone', value: profile.mobilePhone ?? ''),
            InfoRow(title: 'Primary Phone', value: profile.primaryPhone ?? ''),
          ],
        ),
      ),
    );
  }
}

class EmploymentDetailsSection extends StatelessWidget {
  final SelfProfile profile;

  const EmploymentDetailsSection({Key? key, required this.profile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Employment Details',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            InfoRow(title: 'Company', value: profile.employmentCompany ?? ''),
            InfoRow(title: 'Date of Join', value: profile.dateOfJoin ?? ''),
            InfoRow(title: 'Contract Type', value: profile.contractType ?? ''),
            InfoRow(title: 'Base Port', value: profile.baseport ?? ''),
          ],
        ),
      ),
    );
  }
}

class QualificationsSection extends StatelessWidget {
  final SelfProfile profile;

  const QualificationsSection({Key? key, required this.profile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Qualifications',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            if (profile.qualification != null &&
                profile.qualification!.isNotEmpty)
              Column(
                children: profile.qualification!
                    .map((qual) => ListTile(
                          title: Text(qual.qualificationCode ?? ''),
                          subtitle: Text(
                              'Expiry: ${qual.qualificationDueDate ?? 'N/A'}'),
                        ))
                    .toList(),
              )
            else
              const Text('No qualifications found'),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String title;
  final String value;

  const InfoRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}
