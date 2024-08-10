import 'dart:convert';

import 'credit_info.dart';
import 'flight.dart';

class DutyList {
  int? key;
  String? oldKey;
  Flight? flight;
  String? dutyCode;
  String? dutyStartUtc;
  String? dutyStartLocal;
  String? dutyEndUtc;
  String? dutyEndLocal;
  double? dutyPeriod;
  bool? isStandby;
  String? dutyType;
  String? dutyDesc;
  String? asDutyIndicator;
  String? patternCode;
  String? notificationUtc;
  dynamic acknowledgedUtc;
  String? patternStartUtc;
  String? patternStartLocal;
  String? patternEndUtc;
  String? patternEndLocal;
  String? rosterEffectiveToUtc;
  String? rosterEffectiveFromUtc;
  String? dutyPort;
  String? dutyEndPort;
  CreditInfo? creditInfo;
  int? creditHours;
  List<dynamic>? specialDutyCode;
  String? md5;
  int? dutySequenceWithinTrip;

  DutyList({
    this.key,
    this.oldKey,
    this.flight,
    this.dutyCode,
    this.dutyStartUtc,
    this.dutyStartLocal,
    this.dutyEndUtc,
    this.dutyEndLocal,
    this.dutyPeriod,
    this.isStandby,
    this.dutyType,
    this.dutyDesc,
    this.asDutyIndicator,
    this.patternCode,
    this.notificationUtc,
    this.acknowledgedUtc,
    this.patternStartUtc,
    this.patternStartLocal,
    this.patternEndUtc,
    this.patternEndLocal,
    this.rosterEffectiveToUtc,
    this.rosterEffectiveFromUtc,
    this.dutyPort,
    this.dutyEndPort,
    this.creditInfo,
    this.creditHours,
    this.specialDutyCode,
    this.md5,
    this.dutySequenceWithinTrip,
  });

  factory DutyList.fromMap(Map<String, dynamic> data) => DutyList(
        key: data['key'] as int?,
        oldKey: data['_oldKey'] as String?,
        flight: data['flight'] == null
            ? null
            : Flight.fromMap(data['flight'] as Map<String, dynamic>),
        dutyCode: data['dutyCode'] as String?,
        dutyStartUtc: data['dutyStartUTC'] as String?,
        dutyStartLocal: data['dutyStartLocal'] as String?,
        dutyEndUtc: data['dutyEndUTC'] as String?,
        dutyEndLocal: data['dutyEndLocal'] as String?,
        dutyPeriod: (data['dutyPeriod'] as num?)?.toDouble(),
        isStandby: data['isStandby'] as bool?,
        dutyType: data['dutyType'] as String?,
        dutyDesc: data['dutyDesc'] as String?,
        asDutyIndicator: data['asDutyIndicator'] as String?,
        patternCode: data['patternCode'] as String?,
        notificationUtc: data['notificationUtc'] as String?,
        acknowledgedUtc: data['acknowledgedUtc'] as dynamic,
        patternStartUtc: data['patternStartUtc'] as String?,
        patternStartLocal: data['patternStartLocal'] as String?,
        patternEndUtc: data['patternEndUtc'] as String?,
        patternEndLocal: data['patternEndLocal'] as String?,
        rosterEffectiveToUtc: data['rosterEffectiveToUtc'] as String?,
        rosterEffectiveFromUtc: data['rosterEffectiveFromUtc'] as String?,
        dutyPort: data['dutyPort'] as String?,
        dutyEndPort: data['dutyEndPort'] as String?,
        creditInfo: data['creditInfo'] == null
            ? null
            : CreditInfo.fromMap(data['creditInfo'] as Map<String, dynamic>),
        creditHours: data['creditHours'] as int?,
        specialDutyCode: data['specialDutyCode'] as List<dynamic>?,
        md5: data['md5'] as String?,
        dutySequenceWithinTrip: data['dutySequenceWithinTrip'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'key': key,
        '_oldKey': oldKey,
        'flight': flight?.toMap(),
        'dutyCode': dutyCode,
        'dutyStartUTC': dutyStartUtc,
        'dutyStartLocal': dutyStartLocal,
        'dutyEndUTC': dutyEndUtc,
        'dutyEndLocal': dutyEndLocal,
        'dutyPeriod': dutyPeriod,
        'isStandby': isStandby,
        'dutyType': dutyType,
        'dutyDesc': dutyDesc,
        'asDutyIndicator': asDutyIndicator,
        'patternCode': patternCode,
        'notificationUtc': notificationUtc,
        'acknowledgedUtc': acknowledgedUtc,
        'patternStartUtc': patternStartUtc,
        'patternStartLocal': patternStartLocal,
        'patternEndUtc': patternEndUtc,
        'patternEndLocal': patternEndLocal,
        'rosterEffectiveToUtc': rosterEffectiveToUtc,
        'rosterEffectiveFromUtc': rosterEffectiveFromUtc,
        'dutyPort': dutyPort,
        'dutyEndPort': dutyEndPort,
        'creditInfo': creditInfo?.toMap(),
        'creditHours': creditHours,
        'specialDutyCode': specialDutyCode,
        'md5': md5,
        'dutySequenceWithinTrip': dutySequenceWithinTrip,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DutyList].
  factory DutyList.fromJson(String data) {
    return DutyList.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DutyList] to a JSON string.
  String toJson() => json.encode(toMap());
}
