import 'package:intl/intl.dart';
import 'package:oauthproject/model/public_roster_crew_results/duty_list.dart';

class DutyDateTimeModel {
  DateTime? dutyStartUtc;
  DateTime? dutyStartLocal;
  DateTime? dutyEndUtc;
  DateTime? dutyEndLocal;
  String? flightDate;
  String? dutyStartLocalString;
  String? dutyEndLocalString;
  String? dutyStartUtcString;
  String? dutyEndUtcString;
  String? dutyStartMonth;
  String? dutyStartDay;
  String? showString;
  // String dutyDate;

  DutyDateTimeModel(
      {this.dutyStartUtc,
      this.dutyStartLocal,
      this.dutyEndUtc,
      this.dutyEndLocal,
      this.flightDate,
      this.dutyStartLocalString,
      this.dutyEndLocalString,
      this.dutyStartUtcString,
      this.dutyEndUtcString,
      this.dutyStartMonth,
      this.dutyStartDay,
      this.showString});

  factory DutyDateTimeModel.fromRoster(DutyList roster) {
    final dutyStartUtc = DateTime.parse("${roster.dutyStartUtc}");
    final dutyStartLocal = DateTime.parse("${roster.dutyStartLocal}");
    final dutyEndUtc = DateTime.parse("${roster.dutyEndUtc}");
    final dutyEndLocal = DateTime.parse("${roster.dutyEndLocal}");

    final dutyStartDay =
        roster.flight?.scheduledFlightDate.toString().replaceAll('-', '');

    return DutyDateTimeModel(
        dutyStartUtc: dutyStartUtc,
        dutyStartLocal: dutyStartLocal,
        dutyEndUtc: dutyEndUtc,
        dutyEndLocal: dutyEndLocal,
        flightDate: dutyStartDay,
        dutyStartLocalString: DateFormat.Hm().format(dutyStartLocal),
        dutyEndLocalString: DateFormat.Hm().format(dutyEndLocal),
        dutyStartUtcString: DateFormat.Hm().format(dutyStartUtc),
        dutyEndUtcString: DateFormat.Hm().format(dutyEndUtc),
        showString: DateFormat('E\ndd').format(dutyStartLocal));
  }
}
