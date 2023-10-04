part of 'flight_crewlist_bloc.dart';

@immutable
sealed class FlightCrewlistEvent {}

final class RequestFclEvent extends FlightCrewlistEvent {
  final String dutyCode;
  final String dutyStartDate;

  RequestFclEvent({required this.dutyCode, required this.dutyStartDate});
}

final class RequestSectorFclEvent extends FlightCrewlistEvent {
  final String sector;
  final int dutyCode;
  final int dutyStartDate;

  RequestSectorFclEvent(
      {required this.dutyCode,
      required this.dutyStartDate,
      required this.sector});
}

final class TestRequestFclEvent extends FlightCrewlistEvent {
  // final String dutyCode;
  // final String dutyStartDate;

  // TestRequestFlightCrewlistEvent(
  // {required this.dutyCode, required this.dutyStartDate});
}
