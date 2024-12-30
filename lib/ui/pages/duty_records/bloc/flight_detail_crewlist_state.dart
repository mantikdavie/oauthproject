// abstract class FlightDetailCrewListState {}

// class FlightDetailCrewListInitial extends FlightDetailCrewListState {}

// class FlightDetailCrewListLoading extends FlightDetailCrewListState {}

// class FlightDetailCrewListLoaded extends FlightDetailCrewListState {
//   final List<CrewMember> crewList;

//   FlightDetailCrewListLoaded(this.crewList);
// }

// class FlightDetailCrewListError extends FlightDetailCrewListState {
//   final String message;

//   FlightDetailCrewListError(this.message);
// }

part of 'flight_detail_crewlist_bloc.dart';

@immutable
abstract class FlightDetailCrewlistState {}

class FlightDetailCrewlistInitial extends FlightDetailCrewlistState {}

class FlightDetailCrewlistLoading extends FlightDetailCrewlistState {}

class FlightDetailCrewlistLoaded extends FlightDetailCrewlistState {
  final FlightDetailCrewList crewList;

  FlightDetailCrewlistLoaded(this.crewList);
}

class FlightDetailCrewlistError extends FlightDetailCrewlistState {
  final String message;

  FlightDetailCrewlistError(this.message);
}
