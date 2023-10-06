import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:oauthproject/model/self_profile/self_profile.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/local_storage.dart';

part 'self_profile_event.dart';
part 'self_profile_state.dart';

class SelfProfileBloc extends Bloc<SelfProfileEvent, SelfProfileState> {
  SelfProfileBloc() : super(ProfileInitial()) {
    on<ProfileFetchRemoteEvent>(_mapProfileFetchRemoteEventToState);
    on<ProfileFetchLocalEvent>(_mapProfileFetchLocalEventToState);
  }

  void _mapProfileFetchRemoteEventToState(
      ProfileFetchRemoteEvent event, Emitter<SelfProfileState> emit) async {
    emit(ProfileLoading());
    try {
      final ern = await readFromCache('ern');
      final resp = await getBaseRequest('cls-api/v1/profile', {'ern': ern});

      if (resp != null) {
        final respJson = jsonEncode(resp);
        saveStringToCache('profile_resp', respJson);
        SelfProfile crewProfile = SelfProfile.fromMap(resp);
        saveStringToCache('crew_id', crewProfile.crewId.toString());
        emit(ProfileLoaded(crewProfile: crewProfile));
      } else {
        final String resp = await readFromCache('profile_resp');
        debugPrint('debug print in fetch local: $resp');
        SelfProfile crewProfile = SelfProfile.fromJson(resp);
        emit(ProfileLoaded(crewProfile: crewProfile));
      }
    } catch (e) {
      debugPrint('caught error: $e');
      emit(ProfileError(message: e.toString()));
    }
  }

  void _mapProfileFetchLocalEventToState(
      ProfileFetchLocalEvent event, Emitter<SelfProfileState> emit) async {
    try {
      final String resp = await readFromCache('profile_resp');
      debugPrint('debug print in fetch local: $resp');
      SelfProfile crewProfile = SelfProfile.fromJson(resp);
      emit(ProfileLoaded(crewProfile: crewProfile));
    } catch (e) {
      debugPrint('caught error: $e');
      emit(ProfileError(message: e.toString()));
    }
  }
}
