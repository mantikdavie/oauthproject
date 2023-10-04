import 'dart:convert';

import 'crew_profile.dart';

class CrewArray {
  String? crewId;
  String? carrier;
  String? aircraftTypeQualificationCode;
  String? crewCategory;
  String? crewCategorySeniority;
  String? qualificationSeniority;
  String? specialDutyCode;
  String? crewBadgeName;
  String? patternCode;
  String? dutyStartTimestamp;
  String? dutyEndTimestamp;
  CrewProfile? crewProfile;

  CrewArray({
    this.crewId,
    this.carrier,
    this.aircraftTypeQualificationCode,
    this.crewCategory,
    this.crewCategorySeniority,
    this.qualificationSeniority,
    this.specialDutyCode,
    this.crewBadgeName,
    this.patternCode,
    this.dutyStartTimestamp,
    this.dutyEndTimestamp,
    this.crewProfile,
  });

  @override
  String toString() {
    return 'CrewArray(crewId: $crewId, carrier: $carrier, aircraftTypeQualificationCode: $aircraftTypeQualificationCode, crewCategory: $crewCategory, crewCategorySeniority: $crewCategorySeniority, qualificationSeniority: $qualificationSeniority, specialDutyCode: $specialDutyCode, crewBadgeName: $crewBadgeName, patternCode: $patternCode, dutyStartTimestamp: $dutyStartTimestamp, dutyEndTimestamp: $dutyEndTimestamp, crewProfile: $crewProfile)';
  }

  factory CrewArray.fromMap(Map<String, dynamic> data) => CrewArray(
        crewId: data['crewId'] as String?,
        carrier: data['carrier'] as String?,
        aircraftTypeQualificationCode:
            data['aircraftTypeQualificationCode'] as String?,
        crewCategory: data['crewCategory'] as String?,
        crewCategorySeniority: data['crewCategorySeniority'] as String?,
        qualificationSeniority: data['qualificationSeniority'] as String?,
        specialDutyCode: data['specialDutyCode'] as String?,
        crewBadgeName: data['crewBadgeName'] as String?,
        patternCode: data['patternCode'] as String?,
        dutyStartTimestamp: data['dutyStartTimestamp'] as String?,
        dutyEndTimestamp: data['dutyEndTimestamp'] as String?,
        crewProfile: data['crewProfile'] == null
            ? null
            : CrewProfile.fromMap(data['crewProfile'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'crewId': crewId,
        'carrier': carrier,
        'aircraftTypeQualificationCode': aircraftTypeQualificationCode,
        'crewCategory': crewCategory,
        'crewCategorySeniority': crewCategorySeniority,
        'qualificationSeniority': qualificationSeniority,
        'specialDutyCode': specialDutyCode,
        'crewBadgeName': crewBadgeName,
        'patternCode': patternCode,
        'dutyStartTimestamp': dutyStartTimestamp,
        'dutyEndTimestamp': dutyEndTimestamp,
        'crewProfile': crewProfile?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CrewArray].
  factory CrewArray.fromJson(String data) {
    return CrewArray.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CrewArray] to a JSON string.
  String toJson() => json.encode(toMap());

  CrewArray copyWith({
    String? crewId,
    String? carrier,
    String? aircraftTypeQualificationCode,
    String? crewCategory,
    String? crewCategorySeniority,
    String? qualificationSeniority,
    String? specialDutyCode,
    String? crewBadgeName,
    String? patternCode,
    String? dutyStartTimestamp,
    String? dutyEndTimestamp,
    CrewProfile? crewProfile,
  }) {
    return CrewArray(
      crewId: crewId ?? this.crewId,
      carrier: carrier ?? this.carrier,
      aircraftTypeQualificationCode:
          aircraftTypeQualificationCode ?? this.aircraftTypeQualificationCode,
      crewCategory: crewCategory ?? this.crewCategory,
      crewCategorySeniority:
          crewCategorySeniority ?? this.crewCategorySeniority,
      qualificationSeniority:
          qualificationSeniority ?? this.qualificationSeniority,
      specialDutyCode: specialDutyCode ?? this.specialDutyCode,
      crewBadgeName: crewBadgeName ?? this.crewBadgeName,
      patternCode: patternCode ?? this.patternCode,
      dutyStartTimestamp: dutyStartTimestamp ?? this.dutyStartTimestamp,
      dutyEndTimestamp: dutyEndTimestamp ?? this.dutyEndTimestamp,
      crewProfile: crewProfile ?? this.crewProfile,
    );
  }
}
