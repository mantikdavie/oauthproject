part of 'crew_roster_bloc.dart';

@immutable
sealed class CrewRosterEvent {}

final class RequestPublicRoster extends CrewRosterEvent {
  final String crewErn;

  RequestPublicRoster({required this.crewErn});
}
