import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:oauthproject/utility/constants.dart';
import 'package:oauthproject/utility/local_storage.dart';
import 'service_locator.dart';

final dio = sl<Dio>();

Future<dynamic> getBaseRequest(
    String path, Map<String, String> queryParameters) async {
  final uri = Uri.https(apiBaseAddress, path, queryParameters);
  debugPrint('requested api addr: ${uri.toString()}');

  try {
    final token = await readFromCache('id_token');
    debugPrint('token: ${token.toString()}');
    final resp = await dio.getUri(uri,
        options: Options(headers: {
          "Authorization": "Bearer $token",
        }));

    final dynamic respData = resp.data;

    debugPrint('Response Data from Dio Request: ${respData.toString()}');
    return respData;
  } on DioException catch (e) {
    debugPrint('Error caught: ${e.response}');
  }
}
