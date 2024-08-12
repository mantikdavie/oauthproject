import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:oauthproject/utility/constants.dart';
import 'package:oauthproject/utility/local_storage.dart';
import 'package:http/http.dart' as http;

// final dio = sl<Dio>();

Future<dynamic> getBaseRequest(
    String path, Map<String, String> queryParameters) async {
  final uri = Uri.https(apiBaseAddress, path, queryParameters);
  debugPrint('requested get api addr: ${uri.toString()}');

  try {
    final dio = Dio();

    final token = await readFromCache('id_token');
    debugPrint('token: ${token.toString()}');
    final Response resp;
    if (kIsWeb) {
      resp = await dio.get("http://localhost:5002/${uri.toString()}",
          options: Options(headers: {
            "Authorization": "Bearer $token",
            HttpHeaders.userAgentHeader: "okhttp/4.9.2",
            "X-Requested-With": "XMLHttpRequest"
          }));
    } else {
      resp = await dio.getUri(uri,
          options: Options(headers: {
            "Authorization": "Bearer $token",
            HttpHeaders.userAgentHeader: "okhttp/4.9.2"
          }));
    }

    final dynamic respData = resp.data;

    debugPrint('Response Data from Dio Request: $respData');
    return respData;
  } on DioException catch (e) {
    debugPrint('Dio API Get Error caught: ${e.response}');
  }
}

Future<dynamic> dioPostRequest(
    String base, String path, Map<String, String> requestBody) async {
  final uri = Uri.https(base, path);
  debugPrint('requested post api addr: $uri');

  try {
    final dio = Dio(BaseOptions(receiveDataWhenStatusError: true));

    final resp = await dio.postUri(uri,
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded",
          HttpHeaders.userAgentHeader: "okhttp/4.9.2"
        }),
        data: requestBody);

    final dynamic respData = resp.data;

    debugPrint('Response Data from Dio Request: $respData');
    return respData;
  } on DioException catch (e) {
    debugPrint('Dio API Post Error caught: $e');
    debugPrint('Dio API Post Error caught: ${e.error}');
  }
}

//http Request not using Dio
Future<dynamic> httpPostRequest(
    String base, String path, Map<String, String> requestBody) async {
  final uri = Uri.https(base, path);
  debugPrint('requested post api addr: $uri');

  try {
    final token = await readFromCache('id_token');
    debugPrint('token: ${token.toString()}');
    final resp = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: requestBody);

    final dynamic respData = resp.body;

    debugPrint('Response Data from Dio Request: $respData');
    return respData;
  } on HttpClientResponse catch (e) {
    debugPrint('Http API Post Error caught: $e');
  }
}
