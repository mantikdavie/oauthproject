import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:oauthproject/model/flight_crew_list/crew_profile.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/local_storage.dart';

part 'crew_profile_event.dart';
part 'crew_profile_state.dart';

class CrewProfileBloc extends Bloc<CrewProfileEvent, CrewProfileState> {
  CrewProfileBloc() : super(CrewProfileInitial()) {
    on<CrewProfileSearchByCrewId>(_mapCrewProfileSearchByCrewIdToState);
  }

  Future<void> _mapCrewProfileSearchByCrewIdToState(
      CrewProfileSearchByCrewId event, Emitter<CrewProfileState> emit) async {
    try {
      final ern = await readFromCache('ern');
      final selfCrewId = await readFromCache('crew_id');

      if (selfCrewId != event.crewId) {
        emit(CrewProfileLoading());

        await Future.delayed(const Duration(milliseconds: 1000));

        // final resp = await rootBundle
        //     .loadString("assets/mockup/crew_profile_by_crewid.json");
        // final respJson = json.decode(resp) as List;
        // CrewProfile crewProfile = CrewProfile.fromMap(respJson.first);

        final resp = await getBaseRequest('cls-api/v1/profile', {
          'ern': ern,
          'crewId': event.crewId,
        }) as List;

        final result = resp.first;

        CrewProfile crewProfile = CrewProfile.fromMap(result['crewProfile']);
        emit(CrewProfileLoaded(crewProfile: crewProfile));
      }
    } catch (e) {
      debugPrint('caught error: $e');
      emit(CrewProfileError(errorMessage: e.toString()));
    }
  }
}
