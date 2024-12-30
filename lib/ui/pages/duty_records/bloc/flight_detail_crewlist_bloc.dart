import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:oauthproject/model/flight_details_crewlist/flight_detail_crewlist.dart';
import 'package:oauthproject/utility/functions/fetch_crewlist.dart';

part 'flight_detail_crewlist_event.dart';
part 'flight_detail_crewlist_state.dart';

class FlightDetailCrewlistBloc
    extends Bloc<FlightDetailCrewlistEvent, FlightDetailCrewlistState> {
  FlightDetailCrewlistBloc() : super(FlightDetailCrewlistInitial()) {
    on<FetchFlightDetailCrewlist>(_onFetchFlightDetailCrewlist);
  }

  void _onFetchFlightDetailCrewlist(FetchFlightDetailCrewlist event,
      Emitter<FlightDetailCrewlistState> emit) async {
    emit(FlightDetailCrewlistLoading());

    try {
      final resp = await fetchFiightCrewList(
        dutyStartDate: event.dutyStartDate,
        dutyCode: event.dutyCode,
      );
      emit(FlightDetailCrewlistLoaded(
          FlightDetailCrewList.fromJson(resp['result'])));
    } catch (e) {
      emit(FlightDetailCrewlistError(e.toString()));
    }
  }
}
