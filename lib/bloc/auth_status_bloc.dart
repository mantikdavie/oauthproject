import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:oauthproject/utility/local_storage.dart';
import 'package:oauthproject/utility/token_flow.dart';

part 'auth_status_event.dart';
part 'auth_status_state.dart';

class AuthStatusBloc extends Bloc<AuthStatusEvent, AuthStatusState> {
  AuthStatusBloc() : super(AuthStatusInitial()) {
    on<AuthStatusChecking>(_mapAuthStatusCheckingToState);
    on<AuthStatusRequestCode>(_mapAuthStatusRequestCodeToState);
    on<AuthStatusRequestToken>(_mapAuthStatusRequestTokenToState);
  }

  void _mapAuthStatusCheckingToState(
      AuthStatusChecking event, Emitter<AuthStatusState> emit) async {
    await Future.delayed(const Duration(milliseconds: 2000));
    emit(AuthStatusCheckInProgess());
    try {
      await Future.delayed(const Duration(milliseconds: 2000));
      final hasToken = await readFromCache('id_token');
      if (hasToken != null) {
        final isTokenValid = await checkCachedToken();
        if (isTokenValid) {
          emit(AuthStatusAuthenticated());
        } else {
          emit(AuthStatusUnauthenticated());
        }
      }
    } catch (e) {
      emit(AuthStatusUnkownError());
      print('Error msg: $e');
      await Future.delayed(const Duration(milliseconds: 2000));
      emit(AuthStatusUnauthenticated());
    }
    
  }

  void _mapAuthStatusRequestCodeToState(
      AuthStatusRequestCode event, Emitter<AuthStatusState> emit) async {
    try {
      final code = await requestCodeFromOauth();
      if (code.isNotEmpty) emit(AuthStatusOauthAccquired());
      final idToken = await requestTokenFromCode(code);
      if (!JwtDecoder.isExpired(idToken)) emit(AuthStatusAuthenticated());
    } catch (e) {
      emit(AuthStatusUnkownError());
      await Future.delayed(const Duration(milliseconds: 2000));
      emit(AuthStatusUnauthenticated());
      print('Error msg: $e');
    }
  }

  void _mapAuthStatusRequestTokenToState(
      AuthStatusRequestToken event, Emitter<AuthStatusState> emit) async {}
}
