import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:oauthproject/model/my_full_roster/my_full_roster.dart';
import 'package:oauthproject/utility/api.dart'; // Assuming you have a utility for API calls
import 'package:oauthproject/utility/local_storage.dart'; // Assuming you have a utility for local storage

part 'my_full_roster_event.dart';
part 'my_full_roster_state.dart';

class MyFullRosterBloc extends Bloc<MyFullRosterEvent, MyFullRosterState> {
  MyFullRosterBloc() : super(MyFullRosterInitial()) {
    on<FetchMyFullRosterFromLocal>(_mapFetchFromLocalToState);
    on<FetchMyFullRosterFromRemote>(_mapFetchFromRemoteToState);
  }

  FutureOr<void> _mapFetchFromLocalToState(
      FetchMyFullRosterFromLocal event, Emitter<MyFullRosterState> emit) async {
    emit(MyFullRosterLoading());
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      debugPrint('Fetching Local MyFullRoster...');
      final cachedData = await readFromCache('my_full_roster');

      if (cachedData != null && cachedData.isNotEmpty) {
        final Map<String, dynamic> jsonMap = json.decode(cachedData);
        final myFullRoster = MyFullRoster.fromMap(jsonMap);
        emit(MyFullRosterLoaded(myFullRoster: myFullRoster));
      } else {
        emit(MyFullRosterNoLocalCache());
      }
    } catch (e) {
      debugPrint('Caught error in Local Fetch: $e');
      emit(MyFullRosterError(errorMessage: e.toString()));
    }
  }

  FutureOr<void> _mapFetchFromRemoteToState(FetchMyFullRosterFromRemote event,
      Emitter<MyFullRosterState> emit) async {
    emit(MyFullRosterLoading());
    debugPrint('Fetching Remote MyFullRoster...');
    try {
      final ern = await readFromCache('ern'); // Assuming you store ERN locally
      final resp = await getBaseRequest('cls-api/v1/duties', {
        'ern': ern,
        'full': "Y"
      }); // Replace with your API endpoint and parameters

      if (resp != null) {
        final respJson = json.encode(resp);
        saveStringToCache('my_full_roster', respJson);

        final myFullRoster = MyFullRoster.fromMap(
            resp); // Assuming you have a fromMap constructor
        emit(MyFullRosterLoaded(myFullRoster: myFullRoster));
      } else {
        // API fetch failed, emit intermediate state before trying local cache
        emit(MyFullRosterRemoteFetchFailedLoadingLocal());

        try {
          final cachedData = await readFromCache('my_full_roster');
          if (cachedData != null && cachedData.isNotEmpty) {
            final Map<String, dynamic> jsonMap = json.decode(cachedData);
            final myFullRoster = MyFullRoster.fromMap(jsonMap);
            emit(MyFullRosterLoaded(myFullRoster: myFullRoster));
            return; // Data loaded from cache, exit successfully
          }
        } catch (cacheError) {
          debugPrint('Error loading from cache: $cacheError');
        }

        // If we reach here, both API fetch and cache loading failed
        emit(MyFullRosterError(errorMessage: 'Failed to fetch data'));
      }
    } catch (e) {
      debugPrint('Caught error: $e');
      emit(MyFullRosterError(errorMessage: e.toString()));
    }
  }
}
