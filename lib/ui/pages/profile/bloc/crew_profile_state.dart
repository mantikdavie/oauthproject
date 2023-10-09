part of 'crew_profile_bloc.dart';

@immutable
sealed class CrewProfileState {}

final class CrewProfileInitial extends CrewProfileState {}

final class CrewProfileLoading extends CrewProfileState {}

final class CrewProfileLoaded extends CrewProfileState {
  final CrewProfile crewProfile;

  CrewProfileLoaded({required this.crewProfile});
}

final class CrewProfileError extends CrewProfileState {
  final String errorMessage;

  CrewProfileError({required this.errorMessage});
}

final class CrewProfileEmpty extends CrewProfileState {}
