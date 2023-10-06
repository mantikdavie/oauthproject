part of 'crew_profile_bloc.dart';

@immutable
sealed class CrewProfileEvent {}

final class CrewProfileSearchByCrewId extends CrewProfileEvent {
  final String crewId;

  CrewProfileSearchByCrewId({required this.crewId});
}

final class CrewProfileSearchByErn extends CrewProfileEvent {
  final String ern;

  CrewProfileSearchByErn({required this.ern});
}
