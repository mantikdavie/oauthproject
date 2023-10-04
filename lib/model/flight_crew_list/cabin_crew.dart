import 'dart:convert';

class CabinCrew {
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

  CabinCrew({
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
  });

  @override
  String toString() {
    return 'CabinCrew(crewId: $crewId, company: $company, aircraftTypeQualificationCode: $aircraftTypeQualificationCode, crewCategory: $crewCategory, crewCategorySeniority: $crewCategorySeniority, qualificationSeniority: $qualificationSeniority, specialDutyCode: $specialDutyCode, crewBadgeName: $crewBadgeName, basePort: $basePort, languageCode: $languageCode, specialDutyCodeDesc: $specialDutyCodeDesc, rcIndicator: $rcIndicator, crewPid: $crewPid)';
  }

  factory CabinCrew.fromMap(Map<String, dynamic> data) => CabinCrew(
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
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CabinCrew].
  factory CabinCrew.fromJson(String data) {
    return CabinCrew.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CabinCrew] to a JSON string.
  String toJson() => json.encode(toMap());

  CabinCrew copyWith({
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
  }) {
    return CabinCrew(
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
    );
  }
}
