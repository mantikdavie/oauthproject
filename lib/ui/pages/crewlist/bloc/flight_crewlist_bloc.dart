import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:oauthproject/model/flight_crew_list/flight_crew_list.dart';
import 'package:oauthproject/model/sim_crew_list/sim_crew_list.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/constants.dart';
import 'package:oauthproject/utility/local_storage.dart';

part 'flight_crewlist_event.dart';
part 'flight_crewlist_state.dart';

class FlightCrewlistBloc
    extends Bloc<FlightCrewlistEvent, FlightCrewlistState> {
  FlightCrewlistBloc() : super(FclInitial()) {
    on<RequestFclEvent>(_mapRequestFlightCrewlistEventToState);
    on<RequestSectorFclEvent>(_mapRequestSectorFlightCrewlistEventToState);
    on<TestRequestFclEvent>(_mapTestRequestFlightCrewlistEventToState);
    on<RequestSimEvent>(_mapRequestSimEventToState);
    on<TestRequestSimEvent>(_mapTestRequestSimEventToState);
  }

  void _mapRequestFlightCrewlistEventToState(
      RequestFclEvent event, Emitter<FlightCrewlistState> emit) async {
    emit(FclLoading());

    try {
      final dutyCode = event.dutyCode;
      final dutyStartDate = event.dutyStartDate;
      final ern = await readFromCache('ern');
      const isFlightCrewListSearch = 'Y';

      final resp = await getBaseRequest(apiEndpointFlightCrewList, {
        'ern': ern,
        'dutyStartDate': dutyStartDate,
        'dutyCode': dutyCode,
        'flightCrewList': isFlightCrewListSearch
      });

      if (resp != null && resp['result']['respCode'] == "") {
        FlightCrewList flightCrewList = FlightCrewList.fromMap(resp['result']);
        debugPrint(flightCrewList.toString());
        emit(FclLoaded(flightCrewList: flightCrewList));
      } else if (resp['result']['respCode'] == "MF") {
        final sectors = resp['result']['sectors'] as List;
        final dutyCode = int.parse(resp['result']['flightNumber']);
        final dutyStartDate = int.parse(resp['result']['flightDate']);
        debugPrint('sectors: $sectors');
        emit(FclMultiSectorLoaded(
            sectors: sectors,
            dutyCode: dutyCode,
            dutyStartDate: dutyStartDate));
      } else if (resp['result']['respCode'] == "NF") {
        debugPrint("No Flight Crew List Found");
        emit(FclNotFound());
      } else {
        emit(FclError(errorMessage: 'Unknown Error'));
      }
    } catch (e) {
      debugPrint('caught error: $e');
      emit(FclError(errorMessage: e.toString()));
    }
  }

  void _mapRequestSimEventToState(
      RequestSimEvent event, Emitter<FlightCrewlistState> emit) async {
    emit(FclLoading());

    try {
      final dutyCode = event.dutyCode;
      final dutyStartDate = event.dutyStartDate;
      final ern = await readFromCache('ern');
      const isFlightCrewListSearch = 'N';

      final resp = await getBaseRequest(apiEndpointFlightCrewList, {
        'ern': ern,
        'dutyStartDate': dutyStartDate,
        'dutyCode': dutyCode,
        'flightCrewList': isFlightCrewListSearch
      });

      if (resp != null && resp['result']['respCode'] == "") {
        SimCrewList simCrewList = SimCrewList.fromMap(resp['result']);
        debugPrint(simCrewList.toString());
        emit(SimCrewListLoaded(simCrewList: simCrewList));
      } else if (resp['errors'] != null) {
        debugPrint("No Flight Crew List Found");
        emit(FclNotFound());
      } else {
        emit(FclError(errorMessage: 'Unknown Error'));
      }
    } catch (e) {
      debugPrint('caught error: $e');
      emit(FclError(errorMessage: e.toString()));
      emit(FclNotFound());
    }
  }

  void _mapTestRequestFlightCrewlistEventToState(
      TestRequestFclEvent event, Emitter<FlightCrewlistState> emit) async {
    emit(FclLoading());

    await Future.delayed(const Duration(milliseconds: 1000));
    final resp =
        await rootBundle.loadString("assets/mockup/flight_crewlist.json");

    // final resp =
    //     await rootBundle.loadString("assets/mockup/flight_crewlist_multi.json");

    final respJson = json.decode(resp);
    FlightCrewList flightCrewList = FlightCrewList.fromMap(respJson["result"]);
    debugPrint(flightCrewList.toString());
    if (respJson['result']['respCode'] == "") {
      emit(FclLoaded(flightCrewList: flightCrewList));
    } else if (respJson['result']['respCode'] == "MF") {
      final sectors = respJson['result']['sectors'] as List;
      final dutyCode = int.parse(respJson['result']['flightNumber']);
      final dutyStartDate = int.parse(respJson['result']['flightDate']);
      debugPrint('sectors: $sectors');

      emit(FclMultiSectorLoaded(
          sectors: sectors, dutyCode: dutyCode, dutyStartDate: dutyStartDate));
    }
  }

  void _mapTestRequestSimEventToState(
      TestRequestSimEvent event, Emitter<FlightCrewlistState> emit) async {
    emit(FclLoading());

    await Future.delayed(const Duration(milliseconds: 1000));
    final resp = await rootBundle.loadString("assets/mockup/sim_crewlist.json");

    // final resp =
    //     await rootBundle.loadString("assets/mockup/flight_crewlist_multi.json");

    final respJson = json.decode(resp);
    SimCrewList simCrewList = SimCrewList.fromMap(respJson["result"]);
    debugPrint(simCrewList.toString());
    if (respJson['result']['respCode'] == "") {
      emit(SimCrewListLoaded(simCrewList: simCrewList));
    }
  }

  void _mapRequestSectorFlightCrewlistEventToState(
      RequestSectorFclEvent event, Emitter<FlightCrewlistState> emit) async {
    emit(FclLoading());

    try {
      final sector = event.sector;
      final dutyCode = event.dutyCode;
      final dutyStartDate = event.dutyStartDate;
      final ern = await readFromCache('ern');
      const isFlightCrewListSearch = 'Y';
      final sectorSplit = sector.split(' ');
      final departurePort = sectorSplit[0];
      final arrivalPort = sectorSplit[1];

      final resp = await getBaseRequest(apiEndpointFlightCrewList, {
        'ern': ern,
        'dutyStartDate': '$dutyStartDate',
        'dutyCode': '$dutyCode',
        'flightCrewList': isFlightCrewListSearch,
        'departurePort': departurePort,
        'arrivalPort': arrivalPort
      });

      if (resp != null && resp['result']['respCode'] == "") {
        FlightCrewList flightCrewList = FlightCrewList.fromMap(resp['result']);
        debugPrint(flightCrewList.toString());
        emit(FclLoaded(flightCrewList: flightCrewList));
      } else if (resp['result']['respCode'] == "MF") {
        final sectors = resp['result']['sectors'] as List;
        final dutyCode = int.parse(resp['result']['flightNumber']);
        final dutyStartDate = int.parse(resp['result']['flightDate']);
        debugPrint('sectors: $sectors');
        emit(FclMultiSectorLoaded(
            sectors: sectors,
            dutyCode: dutyCode,
            dutyStartDate: dutyStartDate));
      } else if (resp['result']['respCode'] == "NF") {
        debugPrint("No Flight Crew List Found");
        emit(FclNotFound());
      } else {
        emit(FclError(errorMessage: 'Unknown Error'));
      }
    } catch (e) {
      debugPrint('caught error: $e');
      emit(FclError(errorMessage: e.toString()));
    }
  }
}
