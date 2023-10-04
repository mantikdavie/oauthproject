part of 'flight_crewlist_bloc.dart';

@immutable
sealed class FlightCrewlistState {}

final class FclInitial extends FlightCrewlistState {}

final class FclLoading extends FlightCrewlistState {}

final class FclLoaded extends FlightCrewlistState {
  final FlightCrewList flightCrewList;

  FclLoaded({required this.flightCrewList});
}

final class FclMultiSectorLoaded extends FlightCrewlistState {
  final List<dynamic> sectors;
  final int dutyCode;
  final int dutyStartDate;

  FclMultiSectorLoaded({required this.sectors, required this.dutyCode, required this.dutyStartDate});
}

final class FclNotFound extends FlightCrewlistState {}

final class FclError extends FlightCrewlistState {
  final String errorMessage;

  FclError({required this.errorMessage});
}
