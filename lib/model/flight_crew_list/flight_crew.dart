import 'dart:convert';

import 'crew_profile.dart';

class FlightCrew {
  String? crewId;
  String? company;
  String? aircraftTypeQualificationCode;
  String? crewCategory;
  String? crewCategorySeniority;
  String? qualificationSeniority;
  String? specialDutyCode;
  String? crewBadgeName;
  String? basePort;
  String? languageCode;
  String? specialDutyCodeDesc;
  String? rcIndicator;
  String? crewPid;
  CrewProfile? crewProfile;

  FlightCrew({
    this.crewId,
    this.company,
    this.aircraftTypeQualificationCode,
    this.crewCategory,
    this.crewCategorySeniority,
    this.qualificationSeniority,
    this.specialDutyCode,
    this.crewBadgeName,
    this.basePort,
    this.languageCode,
    this.specialDutyCodeDesc,
    this.rcIndicator,
    this.crewPid,
    this.crewProfile,
  });

  @override
  String toString() {
    return 'FlightCrew(crewId: $crewId, company: $company, aircraftTypeQualificationCode: $aircraftTypeQualificationCode, crewCategory: $crewCategory, crewCategorySeniority: $crewCategorySeniority, qualificationSeniority: $qualificationSeniority, specialDutyCode: $specialDutyCode, crewBadgeName: $crewBadgeName, basePort: $basePort, languageCode: $languageCode, specialDutyCodeDesc: $specialDutyCodeDesc, rcIndicator: $rcIndicator, crewPid: $crewPid, crewProfile: $crewProfile)';
  }

  factory FlightCrew.fromMap(Map<String, dynamic> data) => FlightCrew(
        crewId: data['crewId'] as String?,
        company: data['company'] as String?,
        aircraftTypeQualificationCode:
            data['aircraftTypeQualificationCode'] as String?,
        crewCategory: data['crewCategory'] as String?,
        crewCategorySeniority: data['crewCategorySeniority'] as String?,
        qualificationSeniority: data['qualificationSeniority'] as String?,
        specialDutyCode: data['specialDutyCode'] as String?,
        crewBadgeName: data['crewBadgeName'] as String?,
        basePort: data['basePort'] as String?,
        languageCode: data['languageCode'] as String?,
        specialDutyCodeDesc: data['specialDutyCodeDesc'] as String?,
        rcIndicator: data['RCIndicator'] as String?,
        crewPid: data['crewPID'] as String?,
        crewProfile: data['crewProfile'] == null
            ? null
            : CrewProfile.fromMap(data['crewProfile'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'crewId': crewId,
        'company': company,
        'aircraftTypeQualificationCode': aircraftTypeQualificationCode,
        'crewCategory': crewCategory,
        'crewCategorySeniority': crewCategorySeniority,
        'qualificationSeniority': qualificationSeniority,
        'specialDutyCode': specialDutyCode,
        'crewBadgeName': crewBadgeName,
        'basePort': basePort,
        'languageCode': languageCode,
        'specialDutyCodeDesc': specialDutyCodeDesc,
        'RCIndicator': rcIndicator,
        'crewPID': crewPid,
        'crewProfile': crewProfile?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FlightCrew].
  factory FlightCrew.fromJson(String data) {
    return FlightCrew.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FlightCrew] to a JSON string.
  String toJson() => json.encode(toMap());

  FlightCrew copyWith({
    String? crewId,
    String? company,
    String? aircraftTypeQualificationCode,
    String? crewCategory,
    String? crewCategorySeniority,
    String? qualificationSeniority,
    String? specialDutyCode,
    String? crewBadgeName,
    String? basePort,
    String? languageCode,
    String? specialDutyCodeDesc,
    String? rcIndicator,
    String? crewPid,
    CrewProfile? crewProfile,
  }) {
    return FlightCrew(
      crewId: crewId ?? this.crewId,
      company: company ?? this.company,
      aircraftTypeQualificationCode:
          aircraftTypeQualificationCode ?? this.aircraftTypeQualificationCode,
      crewCategory: crewCategory ?? this.crewCategory,
      crewCategorySeniority:
          crewCategorySeniority ?? this.crewCategorySeniority,
      qualificationSeniority:
          qualificationSeniority ?? this.qualificationSeniority,
      specialDutyCode: specialDutyCode ?? this.specialDutyCode,
      crewBadgeName: crewBadgeName ?? this.crewBadgeName,
      basePort: basePort ?? this.basePort,
      languageCode: languageCode ?? this.languageCode,
      specialDutyCodeDesc: specialDutyCodeDesc ?? this.specialDutyCodeDesc,
      rcIndicator: rcIndicator ?? this.rcIndicator,
      crewPid: crewPid ?? this.crewPid,
      crewProfile: crewProfile ?? this.crewProfile,
    );
  }
}
