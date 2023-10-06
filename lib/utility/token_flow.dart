import 'dart:async';
import 'dart:convert';
// import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:oauth2_client/microsoft_oauth2_client.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/local_storage.dart';

// "https://login.microsoftonline.com/
// f62aca8c-2ba2-417b-a0c1-ab3f1020ccc4/oauth2/v2.0/authorize?
// client_id=f249d3fd-6586-4cde-a844-59f984c2dcbb
// &response_type=code
// &redirect_uri=com.cathaypacific.crewlifestyle://com.cathaypacific.crewlifestyle.callback&
// response_mode=query&scope=openid%20offline_access");

OAuth2Client client = MicrosoftOauth2Client(
  tenant: "f62aca8c-2ba2-417b-a0c1-ab3f1020ccc4",
  redirectUri:
      'com.cathaypacific.crewlifestyle://com.cathaypacific.crewlifestyle.callback',
  customUriScheme: 'com.cathaypacific.crewlifestyle',
);

OAuth2Helper oauthHelper = OAuth2Helper(
  client,
  clientId: 'f249d3fd-6586-4cde-a844-59f984c2dcbb',
  scopes: ['openid offline_access'],
);

Future<bool> checkCachedToken() async {
  final refreshToken = await readFromCache('refresh_token');
  // final tokenRespMap = json.decode(tokenResp.toString());
  debugPrint('CachedRefreshToken: $refreshToken');
  final idToken = await readFromCache('id_token');
  // debugPrint("id token: ${idToken.toString()}");
  if (idToken.toString().isEmpty) return false;
  // final refreshToken = tokenResp['refresh_token'];

  final isTokenValid = JwtDecoder.isExpired(idToken);
  if (!isTokenValid) {
    debugPrint('debug msg: id token is valid');
    return true;
  } else {
    // debugPrint('requesting from refresh token');
    // final newTokenResp = await requestFromRefreshToken(refreshToken);
    // if (newTokenResp.isNotEmpty) {
    //   debugPrint('newTokenResp: $newTokenResp');
    //   return true;
    // } else {
    //   return false;
    // }
    debugPrint('debug msg: id token is expired');
    return false;
  }
}

FutureOr<String> requestCodeFromOauth() async {
  final resp = await client.requestAuthorization(
      enableState: false,
      clientId: 'f249d3fd-6586-4cde-a844-59f984c2dcbb',
      scopes: ['openid offline_access'],
      customParams: {'response_mode': 'query'});

  debugPrint("Oauth Code: ${resp.code}");
  saveStringToCache('oauth_code', resp.code.toString());
  return resp.code.toString();
}

FutureOr<String> requestTokenFromCode(String code) async {
  // final resp = await client.requestAccessToken(
  //   code: code,
  //   clientId: 'f249d3fd-6586-4cde-a844-59f984c2dcbb',
  //   scopes: ['openid offline_access'],
  //   // customParams: {'response_mode': 'query'},
  // );

  final requestBody = {
    "grant_type": "authorization_code",
    "code": code,
    "redirect_uri":
        "com.cathaypacific.crewlifestyle://com.cathaypacific.crewlifestyle.callback",
    "client_id": 'f249d3fd-6586-4cde-a844-59f984c2dcbb'
  };

  final resp = await dioPostRequest('login.microsoftonline.com',
      'f62aca8c-2ba2-417b-a0c1-ab3f1020ccc4/oauth2/v2.0/token', requestBody);

  final respMap = resp;
  debugPrint(respMap.toString());
  final idToken = respMap["id_token"];
  final decodeToken = JwtDecoder.decode(idToken.toString());

  debugPrint("id token: ${respMap["id_token"]}");
  debugPrint("refresh_token: ${respMap["refresh_token"]}");
  saveStringToCache('token_resp', respMap.toString());
  saveStringToCache('access_token', respMap["access_token"]);
  saveStringToCache('refresh_token', respMap["refresh_token"]);
  saveStringToCache('id_token', respMap["id_token"]);
  saveStringToCache('ern', decodeToken['cpaern']);
  saveStringToCache('crew_id', decodeToken['sAMAccountName']);

  return respMap["id_token"];
}

Future<String> requestFromRefreshToken(String refreshToken) async {
  // final resp = await client.requestAccessToken(
  //     code: refreshToken,
  //     clientId: 'f249d3fd-6586-4cde-a844-59f984c2dcbb',
  //     scopes: ['openid offline_access']);

  // final resp = await client.refreshToken(
  //   refreshToken,
  //   clientId: 'f249d3fd-6586-4cde-a844-59f984c2dcbb',
  // );

  final requestBody = {
    "grant_type": "refresh_token",
    "refresh_token": refreshToken,
    "scope": "openid",
    "client_id": 'f249d3fd-6586-4cde-a844-59f984c2dcbb'
  };

  final resp = await dioPostRequest(
      'login.microsoftonline.com',
      'f62aca8c-2ba2-417b-a0c1-ab3f1020ccc4/oauth2/v2.0/token',
      requestBody) as Map;

  // final respJson = json.encode(resp.toString());

  debugPrint("new refresh token from refresh: ${resp["refresh_token"]}");
  debugPrint("new id token from refresh: ${resp["id_token"]}");
  saveStringToCache('token_resp', resp.toString());
  saveStringToCache('access_token', resp["access_token"]);
  saveStringToCache('refresh_token', resp["refresh_token"]);
  saveStringToCache('id_token', resp["id_token"]);

  return resp["id_token"];
}
