import 'package:shared_preferences/shared_preferences.dart';
import 'service_locator.dart';

void saveStringToCache(String key, String value) async {
  final sharedPref = sl<SharedPreferences>();

  await sharedPref.setString(key, value);
}

Future<dynamic> readFromCache(String key) async {
  final sharedPref = sl<SharedPreferences>();

  return sharedPref.get(key) ?? '';
}

void removeFromCache(String key) async {
  final sharedPref = sl<SharedPreferences>();
  await sharedPref.remove(key);
}

//potential key store
//
//oauth_code
//id_token
//token_resp
//seniority_list
//profile_resp
