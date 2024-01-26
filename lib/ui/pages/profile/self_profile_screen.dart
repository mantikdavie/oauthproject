import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oauthproject/bloc/auth/auth_status_bloc.dart';
import 'package:oauthproject/model/self_profile/self_profile.dart';
import 'package:oauthproject/ui/pages/profile/bloc/self_profile_bloc.dart';
import 'package:oauthproject/ui/widgets/auth_status_icon_widget.dart';

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
      body: BlocBuilder<SelfProfileBloc, SelfProfileState>(
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
    );
  }
}

class ProfileListView extends StatelessWidget {
  final SelfProfile profile;

  const ProfileListView({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(child: Text(profile.badgeName ?? '')),
        Center(child: Text(profile.surname ?? '')),
        Center(child: Text(profile.otherName ?? '')),
        Center(child: Text(profile.galacxyId ?? '')),
        Center(child: Text(profile.currentErn ?? '')),
        Center(
            child:
                Text('Senority Order: ${profile.seniorityOrder.toString()}')),
      ],
    );
  }
}
