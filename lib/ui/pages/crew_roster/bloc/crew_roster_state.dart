part of 'crew_roster_bloc.dart';

@immutable
sealed class CrewRosterState {}

final class CrewRosterInitial extends CrewRosterState {}

final class CrewRosterLoading extends CrewRosterState {}

final class CrewRosterLoaded extends CrewRosterState {
  final Map<String, List<DutyList>> rosters;

  CrewRosterLoaded({required this.rosters});
}

final class CrewMultiRosterLoaded extends CrewRosterState {
  final Map<String, List<DutyList>> rosters;

  CrewMultiRosterLoaded({required this.rosters});


}

final class CrewRosterError extends CrewRosterState {
  final String errorMessage;

  CrewRosterError({required this.errorMessage});
}

final class CrewRosterHasOutstandingNotifications extends CrewRosterState {}
