part of 'self_profile_bloc.dart';

@immutable
sealed class SelfProfileState {}

final class ProfileInitial extends SelfProfileState {}

final class ProfileLoading extends SelfProfileState {}

final class ProfileLoaded extends SelfProfileState {
  final CrewProfile crewProfile;

  ProfileLoaded({required this.crewProfile});
}

final class ProfileError extends SelfProfileState {
  final String message;

  ProfileError({required this.message});
}

final class ProfileEmpty extends SelfProfileState {}
