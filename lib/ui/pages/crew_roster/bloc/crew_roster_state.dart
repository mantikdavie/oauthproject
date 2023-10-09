part of 'crew_roster_bloc.dart';

@immutable
sealed class CrewRosterState {}

final class CrewRosterInitial extends CrewRosterState {}

final class CrewRosterLoading extends CrewRosterState {}

final class CrewRosterLoaded extends CrewRosterState {
  final PublicRosterCrewResults publicRosterCrewResults;

  CrewRosterLoaded({required this.publicRosterCrewResults});

}

final class CrewRosterError extends CrewRosterState {
  final String errorMessage;

  CrewRosterError({required this.errorMessage});
}

final class CrewRosterHasOutstandingNotifications extends CrewRosterState {}
