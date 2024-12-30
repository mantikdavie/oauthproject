part of 'flight_detail_crewlist_bloc.dart';

@immutable
abstract class FlightDetailCrewlistEvent {}

class FetchFlightDetailCrewlist extends FlightDetailCrewlistEvent {
  final String dutyStartDate;
  final String dutyCode;

  FetchFlightDetailCrewlist({required this.dutyStartDate, required this.dutyCode});
}