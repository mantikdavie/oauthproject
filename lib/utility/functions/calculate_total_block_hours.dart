import 'package:flutter/foundation.dart';
import 'package:oauthproject/model/public_roster_crew_results/public_roster_crew_results.dart';

Future<double> calculateTotalBlockHours(PublicRosterCrewResults rosters) async {
  List<double> blockHours = [];

  rosters.dutyList?.forEach((duty) {
    if (duty.flight != null) {
      blockHours.add(duty.flight!.blockHours!.toDouble());
    }
  });

  debugPrint(blockHours.toString());

  final double totalBlockHours;
  if (blockHours.isNotEmpty) {
    totalBlockHours = blockHours.reduce((value, element) => value + element);
  } else {
    totalBlockHours = 0;
  }
  return totalBlockHours;
}