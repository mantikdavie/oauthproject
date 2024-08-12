import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:oauthproject/utility/constants.dart';
// ignore: depend_on_referenced_packages
import 'package:oauthproject/utility/local_storage.dart';
import 'package:oauthproject/utility/token_flow.dart';

part 'auth_status_event.dart';
part 'auth_status_state.dart';

class AuthStatusBloc extends Bloc<AuthStatusEvent, AuthStatusState> {
  AuthStatusBloc() : super(AuthStatusInitial()) {
    on<AuthStatusChecking>(_mapAuthStatusCheckingToState);
    on<AuthStatusRequestCode>(_mapAuthStatusRequestCodeToState);
    on<AuthStatusRequestToken>(_mapAuthStatusRequestTokenToState);
    on<AuthStatusRefreshToken>(_mapAuthStatusRefreshTokenToState);
    on<AuthStatusVoidToken>(_mapAuthStatusVoidTokenToState);
  }

  void _mapAuthStatusCheckingToState(
      AuthStatusChecking event, Emitter<AuthStatusState> emit) async {
    await Future.delayed(const Duration(milliseconds: 2000));
    emit(AuthStatusCheckInProgess());
    try {
      // await Future.delayed(const Duration(milliseconds: 2000));
      final hasToken = await readFromCache('id_token');
      if (hasToken != null || hasToken != '') {
        final isTokenValid = await checkCachedToken();
        if (isTokenValid) {
          emit(AuthStatusAuthenticated());
        } else {
          emit(AuthStatusTokenExpired());
        }
      }
    } catch (e) {
      emit(AuthStatusUnkownError());
      debugPrint('Error msg: $e');
      await Future.delayed(const Duration(milliseconds: 2000));
      emit(AuthStatusUnauthenticated());
    }
  }

  void _mapAuthStatusRequestCodeToState(
      AuthStatusRequestCode event, Emitter<AuthStatusState> emit) async {
    try {
      final code = await requestCodeFromOauth();
      if (code.isNotEmpty) emit(AuthStatusOauthAccquired());
      await Future.delayed(const Duration(milliseconds: 100));

      final idToken = await requestTokenFromCode(code);
      if (!JwtDecoder.isExpired(idToken)) emit(AuthStatusAuthenticated());
    } catch (e) {
      emit(AuthStatusUnkownError());
      await Future.delayed(const Duration(milliseconds: 2000));
      emit(AuthStatusUnauthenticated());
      debugPrint('Error msg: $e');
    }
  }

  void _mapAuthStatusRequestTokenToState(
      AuthStatusRequestToken event, Emitter<AuthStatusState> emit) async {
    emit(AuthStatusCheckInProgess());

    // final idToken = await requestTokenFromCode(event.oauthCode);
    final idToken = event.idToken.toString();
    final refreshToken = event.refreshToken.toString();
    saveStringToCache('id_token', idToken);
    saveStringToCache('refresh_token', refreshToken);

    final decodeToken = JwtDecoder.decode(idToken.toString());
    saveStringToCache('ern', decodeToken['cpaern']);
    saveStringToCache('crew_id', decodeToken['sAMAccountName']);

    if (!JwtDecoder.isExpired(idToken)) emit(AuthStatusAuthenticated());
  }

  void _mapAuthStatusRefreshTokenToState(
      AuthStatusRefreshToken event, Emitter<AuthStatusState> emit) async {
    emit(AuthStatusRefeshingToken());
    try {
      final refreshToken = await readFromCache('refresh_token');
      if (refreshToken != null || refreshToken != '') {
        final idToken = await requestFromRefreshToken(refreshToken);
        if (!JwtDecoder.isExpired(idToken)) emit(AuthStatusAuthenticated());
      }
    } catch (e) {
      emit(AuthStatusUnkownError());
      // await Future.delayed(const Duration(milliseconds: 2000));
      emit(AuthStatusUnauthenticated());
      debugPrint('Error msg: $e');
    }
  }

  void _mapAuthStatusVoidTokenToState(
      AuthStatusVoidToken event, Emitter<AuthStatusState> emit) async {
    // emit(AuthStatusTokenExpired());
    saveStringToCache('id_token', expiredIdToken);
  }
}
