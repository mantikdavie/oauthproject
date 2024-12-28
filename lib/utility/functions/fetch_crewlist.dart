import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/constants.dart';
import 'package:oauthproject/utility/local_storage.dart';

Future<dynamic> fetchFiightCrewList({
  required String dutyStartDate,
  required String dutyCode,
  String? dep,
  String? arr,
}) async {
  final ern = await readFromCache('ern');
  if (dep != null) {
    return await getBaseRequest(apiEndpointFlightCrewList, {
      'ern': ern,
      'dutyStartDate': dutyStartDate,
      'dutyCode': dutyCode,
      'flightCrewList': "Y",
      'departurePort': dep.toString(),
      'arrivalPort': arr.toString()
    });
  }

  return await getBaseRequest(apiEndpointFlightCrewList, {
    'ern': ern,
    'dutyStartDate': dutyStartDate,
    'dutyCode': dutyCode,
    'flightCrewList': "Y",
  });
}

Future<dynamic> fetchSimCrewList({
  required String dutyStartDate,
  required String dutyCode,
  String? dep,
  String? arr,
}) async {
  final ern = await readFromCache('ern');
  return await getBaseRequest(apiEndpointFlightCrewList, {
    'ern': ern,
    'dutyStartDate': dutyStartDate,
    'dutyCode': dutyCode,
    'flightCrewList': "N",
  });
}
