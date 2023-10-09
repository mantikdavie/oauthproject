import 'package:oauthproject/model/public_roster_crew_results/duty_list.dart';

class DutyDateTimeModel {
  DateTime? dutyStartUtc;
  DateTime? dutyStartLocal;
  DateTime? dutyEndUtc;
  DateTime? dutyEndLocal;
  // String dutyDate;

  DutyDateTimeModel(
      {this.dutyStartUtc,
      this.dutyStartLocal,
      this.dutyEndUtc,
      this.dutyEndLocal});

  factory DutyDateTimeModel.fromRoster(DutyList roster) {
    final dutyStartUtc = DateTime.parse("${roster.dutyStartUtc}");
    final dutyStartLocal = DateTime.parse("${roster.dutyStartLocal}");
    final dutyEndUtc = DateTime.parse("${roster.dutyEndUtc}");
    final dutyEndLocal = DateTime.parse("${roster.dutyEndLocal}");

    return DutyDateTimeModel(
      dutyStartUtc: dutyStartUtc,
      dutyStartLocal: dutyStartLocal,
      dutyEndUtc: dutyEndUtc,
      dutyEndLocal: dutyEndLocal,
    );
  }
}
