import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:oauthproject/model/public_roster_crew_results/duty_list.dart';
import 'package:oauthproject/model/public_roster_crew_results/public_roster_crew_results.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/local_storage.dart';

part 'crew_roster_event.dart';
part 'crew_roster_state.dart';

class CrewRosterBloc extends Bloc<CrewRosterEvent, CrewRosterState> {
  CrewRosterBloc() : super(CrewRosterInitial()) {
    on<RequestPublicRoster>(_mapRequestPublicRosterToState);
    on<RequestTestRoster>(_mapRequestTestRosterToState);
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
        final rosters = separateDutyListsByMonth(roster.dutyList ?? []);

        emit(CrewRosterLoaded(rosters: rosters));
      } else if (roster.status == 'error') {
        emit(CrewRosterError(errorMessage: respJson['errorMessage']));
      }
    } else if (respJson['errors'] != null) {
      emit(CrewRosterError(errorMessage: respJson['errors'].toString()));
    }
  }

  void _mapRequestTestRosterToState(
      RequestTestRoster event, Emitter<CrewRosterState> emit) async {
    emit(CrewRosterLoading());
    await Future.delayed(const Duration(milliseconds: 500));

    final resp =
        await rootBundle.loadString("assets/mockup/roster_cross_01.json");
    // await rootBundle.loadString("assets/mockup/public_roster_01.json");
    final respJson = jsonDecode(resp);

    if (respJson['status'] != null) {
      PublicRosterCrewResults roster =
          PublicRosterCrewResults.fromMap(respJson);

      if (roster.status == 'ok') {
        final rosters = separateDutyListsByMonth(roster.dutyList ?? []);

        if (rosters.length > 1) {
          emit(CrewMultiRosterLoaded(rosters: rosters));
        } else {
          emit(CrewRosterLoaded(rosters: rosters));
        }
      } else if (roster.status == 'error') {
        emit(CrewRosterError(errorMessage: respJson['errorMessage']));
      }
    } else if (respJson['errors'] != null) {
      emit(CrewRosterError(errorMessage: respJson['errors'].toString()));
    }
  }
}

List<int> getUniqueRosterPeriods(List<DutyList> dutyLists) {
  Set<int> uniquePeriods = {};

  for (var duty in dutyLists) {
    if (duty.creditInfo?.rosterPeriod != null) {
      uniquePeriods.add(duty.creditInfo!.rosterPeriod!);
    }
  }

  return uniquePeriods.toList();
}

Map<int, List<DutyList>> separateDutyListsByRosterPeriod(
    List<DutyList> dutyLists) {
  Map<int, List<DutyList>> separatedLists = {};

  for (var duty in dutyLists) {
    if (duty.creditInfo?.rosterPeriod != null) {
      int rosterPeriod = duty.creditInfo!.rosterPeriod!;
      if (!separatedLists.containsKey(rosterPeriod)) {
        separatedLists[rosterPeriod] = [];
      }
      separatedLists[rosterPeriod]!.add(duty);
    }
  }

  return separatedLists;
}

Map<String, List<DutyList>> separateDutyListsByMonth(List<DutyList> dutyLists) {
  Map<String, List<DutyList>> separatedLists = {};

  for (var duty in dutyLists) {
    if (duty.dutyStartLocal != null) {
      DateTime dutyStartDate =
          DateFormat("yyyy-MM-dd HH:mm:ss").parse(duty.dutyStartLocal!);
      String monthAbbr = DateFormat('MMM').format(dutyStartDate);

      if (!separatedLists.containsKey(monthAbbr)) {
        separatedLists[monthAbbr] = [];
      }
      separatedLists[monthAbbr]!.add(duty);
    }
  }

  return separatedLists;
}
