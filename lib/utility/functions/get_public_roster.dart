import 'package:flutter/foundation.dart';
import 'package:oauthproject/model/public_roster_crew_results/public_roster_crew_results.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/functions/calculate_total_block_hours.dart';
import 'package:oauthproject/utility/local_storage.dart';

Future<double> getPublicRosterApi({required String crewErn}) async {
  final selfErn = await readFromCache('ern');
  final respJson = await getBaseRequest(
      'cls-api/v1/duties', {'ern': selfErn, 'publicRosterErn': crewErn});
  // final resp =
  //     await rootBundle.loadString("assets/mockup/public_roster_01.json");
  // final respJson = json.decode(resp);
  final PublicRosterCrewResults rosters =
      PublicRosterCrewResults.fromMap(respJson);

  if (respJson['status'] == "ok") {
    return await calculateTotalBlockHours(rosters);
  } else {
    debugPrint(respJson['errorMessage']);
    return -1.0;
  }
}