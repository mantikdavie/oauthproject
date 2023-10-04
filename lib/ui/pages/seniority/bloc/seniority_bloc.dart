import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:oauthproject/model/crew_profile/crew_profile.dart';
import 'package:oauthproject/model/seniority_list/seniority_list.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/local_storage.dart';

part 'seniority_event.dart';
part 'seniority_state.dart';

class SeniorityBloc extends Bloc<SeniorityEvent, SeniorityState> {
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
      final List<SeniorityList> list = [];
      int selfIndex = -1;
      debugPrint('Fetching Local Seniority List...');
      final resp = await readFromCache('seniority_list');
      final String crewId = await readFromCache('crew_id');
      debugPrint('resp in local cache: $resp');
      if (resp == null || resp == '') {
        emit(SeniorityNoLocalCache());
      } else {
        final respJson = json.decode(resp) as List;
        for (var (index, element) in respJson.indexed) {
          final crew = SeniorityList.fromMap(element);
          list.add(crew);

          if (crew.crewId == crewId) {
            selfIndex = index;
          }
        }
        fullSeniorityList = list;

        emit(SeniorityLoaded(seniorityList: list, selfIndex: selfIndex));
      }
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
      final List<SeniorityList> list = [];
      final ern = await readFromCache('ern');
      int selfIndex = -1;
      final resp =
          await getBaseRequest('cls-api/v1/seniorityList', {'ern': ern})
              as List;

      if (resp.isNotEmpty) {
        final respJson = jsonEncode(resp);
        saveStringToCache('seniority_list', respJson);
        final String crewId = await readFromCache('crew_id');

        for (var (index, element) in resp.indexed) {
          final crew = SeniorityList.fromMap(element);
          list.add(crew);

          if (crew.crewId == crewId) {
            selfIndex = index;
          }
        }
        fullSeniorityList = list;

        emit(SeniorityLoaded(seniorityList: list, selfIndex: selfIndex));
      }
    } catch (e) {
      debugPrint('caught error: $e');
      emit(SeniorityError(errorMessage: e.toString()));
    }
  }

  void _mapFilterListToState(
      FilterList event, Emitter<SeniorityState> emit) async {
    emit(SeniorityLoading());
    int selfIndex = -1;
    await Future.delayed(const Duration(milliseconds: 1000));
    try {
      final rank = event.rank;
      final fleet = event.fleet;
      final filteredList = await getFilteredList(rank!, fleet!);
      final String crewId = await readFromCache('crew_id');
      for (var (index, element) in filteredList.indexed) {
        if (element.crewId == crewId) {
          selfIndex = index;
        }
      }

      debugPrint('filteredList: $filteredList');
      emit(SeniorityLoaded(seniorityList: filteredList, selfIndex: selfIndex));
    } catch (e) {
      debugPrint('caught error: $e');
      emit(SeniorityError(errorMessage: e.toString()));
    }
  }

  Future<List<SeniorityList>> getFilteredList(String rank, String fleet) async {
    debugPrint('searching for $rank and $fleet');

    if (rank == 'All' && fleet == 'All') {
      return fullSeniorityList;
    } else if (rank == 'All' && fleet != 'All') {
      return fullSeniorityList.where((crew) => crew.fleet == fleet).toList();
    } else if (rank != 'All' && fleet == 'All') {
      return fullSeniorityList.where((crew) => crew.rank == rank).toList();
    } else {
      return fullSeniorityList
          .where((crew) => (crew.rank == rank && crew.fleet == fleet))
          .toList();
    }
  }
}
