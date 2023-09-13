import 'package:shared_preferences/shared_preferences.dart';

void writeStringToCache(String key, String value) async {
  final sharedPref = await SharedPreferences.getInstance();

  await sharedPref.setString(key, value);
}

Future<dynamic> readFromCache(String key) async {
  final sharedPref = await SharedPreferences.getInstance();

  return sharedPref.get(key);
}

void removeFromCache(String key) async {
  final sharedPref = await SharedPreferences.getInstance();
  await sharedPref.remove(key);
}


//potential key store
// 
//oauth_code
//id_token
//token_resp

