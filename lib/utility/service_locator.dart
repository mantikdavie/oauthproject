import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:oauthproject/utility/isar_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  sl.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());

  sl.registerSingleton<Dio>(Dio());

  sl.registerSingleton(IsarService());
}
