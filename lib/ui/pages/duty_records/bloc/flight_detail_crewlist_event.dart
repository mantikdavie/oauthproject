part of 'flight_detail_crewlist_bloc.dart';

@immutable
abstract class FlightDetailCrewlistEvent {}

class FetchFlightDetailCrewlist extends FlightDetailCrewlistEvent {
  final String dutyStartDate;
  final String dutyCode;
  final String? dep;
  final String? arr;

  FetchFlightDetailCrewlist(
      {required this.dutyStartDate,
      required this.dutyCode,
      this.dep,
      this.arr});
}
