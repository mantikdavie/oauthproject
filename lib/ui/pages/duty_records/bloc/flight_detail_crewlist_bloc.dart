import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:oauthproject/model/flight_details_crewlist/flight_detail_crewlist.dart';
import 'package:oauthproject/utility/functions/fetch_crewlist.dart';
import 'package:oauthproject/utility/isar_service.dart';
import 'package:oauthproject/utility/service_locator.dart';
import 'package:oauthproject/utility/token_flow.dart';

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

    final isTokenValid = await checkCachedToken();
    // First check if token is valid
    if (!isTokenValid) {
      emit(FlightDetailCrewlistError('Invalid or expired token'));
      return;
    }

    try {
      // Check local Isar database first
      // final localData = await sl<IsarService>().getFlightCrewList(
      //   dutyStartDate: event.dutyStartDate,
      //   dutyCode: event.dutyCode,
      // );

      // if (localData != null) {
      //   // Return data from local storage if available
      //   emit(FlightDetailCrewlistLoaded(localData));
      //   return;
      // }

      // If no local data, fetch from API
      final resp = await fetchFiightCrewList(
        dutyStartDate: event.dutyStartDate,
        dutyCode: event.dutyCode,
        dep: event.dep,
        arr: event.arr,
      );

      final crewList = FlightDetailCrewList.fromJson(resp['result']);

      // Save the fetched data to local storage
      // await IsarService().saveFlightCrewList(crewList);

      emit(FlightDetailCrewlistLoaded(crewList));
    } catch (e) {
      emit(FlightDetailCrewlistError(e.toString()));
    }
  }
}
