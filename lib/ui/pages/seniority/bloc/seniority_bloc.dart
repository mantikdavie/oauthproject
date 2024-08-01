import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:oauthproject/model/seniority_list/seniority_list.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/local_storage.dart';

part 'seniority_event.dart';
part 'seniority_state.dart';

class SeniorityBloc extends Bloc<SeniorityEvent, SeniorityState> {
  final Map<String, List<SeniorityList>> _memoizedLists = {};
  List<SeniorityList> fullSeniorityList = [];

  SeniorityBloc() : super(SeniorityInitial()) {
    on<FetchFromLocal>(_mapFetchFromLocalToState);
    on<FetchFromRemote>(_mapFetchFromRemoteToState);
    on<FilterList>(_mapFilterListToState);
  }

  void _mapFetchFromLocalToState(
      FetchFromLocal event, Emitter<SeniorityState> emit) async {
    emit(SeniorityLoading());
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      debugPrint('Fetching Local Seniority List...');
      final resp = await readFromCache('seniority_list');
      debugPrint('resp in local cache: $resp');

      if (resp == null || resp.isEmpty) {
        emit(SeniorityNoLocalCache());
        return;
      }

      final String crewId = await readFromCache('crew_id');
      final respJson = json.decode(resp) as List;

      final list = respJson
          .where((element) => element['seniorityOrder'] != 0)
          .map((element) => SeniorityList.fromMap(element))
          .toList();

      fullSeniorityList = list;

      final selfIndex = list.indexWhere((crew) => crew.crewId == crewId);

      emit(SeniorityLoaded(seniorityList: list, selfIndex: selfIndex));
    } catch (e) {
      debugPrint('caught error in Local Fetch: $e');
      emit(SeniorityError(errorMessage: e.toString()));
    }
  }

  void _mapFetchFromRemoteToState(
      FetchFromRemote event, Emitter<SeniorityState> emit) async {
    emit(SeniorityLoading());
    debugPrint('Fetching Remote Seniority List...');
    try {
      final ern = await readFromCache('ern');
      final resp =
          await getBaseRequest('cls-api/v1/seniorityList', {'ern': ern})
              as List?;

      final respJson = jsonEncode(resp);
      saveStringToCache('seniority_list', respJson);

      if (resp?.isNotEmpty ?? false) {
        final String crewId = await readFromCache('crew_id');

        final list = List<SeniorityList>.generate(
          resp!.length,
          (index) => SeniorityList.fromMap(resp[index]),
        ).where((crew) => crew.seniorityOrder != 0).toList();

        fullSeniorityList = list;
        _memoizedLists.clear(); // Clear memoized results

        final selfIndex = list.indexWhere((crew) => crew.crewId == crewId);

        emit(SeniorityLoaded(seniorityList: list, selfIndex: selfIndex));
      } else {
        emit(SeniorityLoaded(seniorityList: const [], selfIndex: -1));
      }
    } catch (e) {
      debugPrint('caught error: $e');
      emit(SeniorityError(errorMessage: e.toString()));
    }
  }

  void _mapFilterListToState(
      FilterList event, Emitter<SeniorityState> emit) async {
    emit(SeniorityLoading());
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      final filteredList = await getFilteredList(event.rank!, event.fleet!);
      final String crewId = await readFromCache('crew_id');

      final selfIndex =
          filteredList.indexWhere((element) => element.crewId == crewId);

      debugPrint('filteredList: $filteredList');
      emit(SeniorityLoaded(seniorityList: filteredList, selfIndex: selfIndex));
    } catch (e) {
      debugPrint('caught error: $e');
      emit(SeniorityError(errorMessage: e.toString()));
    }
  }

  Future<List<SeniorityList>> getFilteredList(String rank, String fleet) async {
    final key = '$rank-$fleet';
    if (_memoizedLists.containsKey(key)) {
      return _memoizedLists[key]!;
    }

    debugPrint('searching for $rank and $fleet');

    final filteredList = fullSeniorityList.where((crew) {
      bool rankMatch = rank == 'All' || crew.rank == rank;
      bool fleetMatch = fleet == 'All' ||
          (fleet == 'AWB' && ['3', '5', 'E'].contains(crew.fleet)) ||
          crew.fleet == fleet;
      return rankMatch && fleetMatch;
    }).toList();

    _memoizedLists[key] = filteredList;
    return filteredList;
  }
}
