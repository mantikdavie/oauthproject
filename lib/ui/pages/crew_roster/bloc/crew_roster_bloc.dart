import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:oauthproject/model/public_roster_crew_results/public_roster_crew_results.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/local_storage.dart';

part 'crew_roster_event.dart';
part 'crew_roster_state.dart';

class CrewRosterBloc extends Bloc<CrewRosterEvent, CrewRosterState> {
  CrewRosterBloc() : super(CrewRosterInitial()) {
    on<RequestPublicRoster>(_mapRequestPublicRosterToState);
  }

  void _mapRequestPublicRosterToState(
      RequestPublicRoster event, Emitter<CrewRosterState> emit) async {
    emit(CrewRosterLoading());
    // final resp =
    //     await rootBundle.loadString("assets/mockup/public_roster_02.json");
    // final respJson = jsonDecode(resp);

    final selfErn = await readFromCache('ern');
    final respJson = await getBaseRequest('cls-api/v1/duties',
        {'ern': selfErn, 'publicRosterErn': event.crewErn});

    if (respJson['status'] != null) {
      PublicRosterCrewResults roster =
          PublicRosterCrewResults.fromMap(respJson);

      if (roster.status == 'ok') {
        emit(CrewRosterLoaded(publicRosterCrewResults: roster));
      } else if (roster.status == 'error') {
        emit(CrewRosterError(errorMessage: respJson['errorMessage']));
      }
    } else if (respJson['errors'] != null) {
      emit(CrewRosterError(errorMessage: respJson['errors'].toString()));
    }
  }
}
