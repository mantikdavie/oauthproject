
class Crew {
  String? crewName;
  String? middleInitialsName;
  String? surname;
  String? badgeName;
  String? currentErn;
  String? firstErn;
  String? galacxyId;
  String? staffRankCode;
  String? rosterRankCode;
  String? fleetMembership;
  String? fleetCode;
  String? baseport;
  List<String>? specialDutyCode;
  String? commander;
  String? dutyPlannedStartUtc;
  String? dutyPlannedStartLocal;
  String? dutyPlannedEndUtc;
  String? dutyPlannedEndLocal;
  int? dutySequenceWithinTrip;
  int? itemSequenceWithinDuty;
  String? lastDutyItem;
  String? itemWorkCode;
  int? patternId;
  String? notificationUtc;
  String? acknowledgedUtc;
  List<String>? reliefQualified;
  String? companyEmail;
  String? firstName;
  String? otherName;
  String? crewId;
  bool? showFirstName;

  Crew({
    this.crewName,
    this.middleInitialsName,
    this.surname,
    this.badgeName,
    this.currentErn,
    this.firstErn,
    this.galacxyId,
    this.staffRankCode,
    this.rosterRankCode,
    this.fleetMembership,
    this.fleetCode,
    this.baseport,
    this.specialDutyCode,
    this.commander,
    this.dutyPlannedStartUtc,
    this.dutyPlannedStartLocal,
    this.dutyPlannedEndUtc,
    this.dutyPlannedEndLocal,
    this.dutySequenceWithinTrip,
    this.itemSequenceWithinDuty,
    this.lastDutyItem,
    this.itemWorkCode,
    this.patternId,
    this.notificationUtc,
    this.acknowledgedUtc,
    this.reliefQualified,
    this.companyEmail,
    this.firstName,
    this.otherName,
    this.crewId,
    this.showFirstName,
  });

  factory Crew.fromMap(Map<String, dynamic> data) => Crew(
        crewName: data['crewName'] as String?,
        middleInitialsName: data['middleInitialsName'] as String?,
        surname: data['surname'] as String?,
        badgeName: data['badgeName'] as String?,
        currentErn: data['currentErn'] as String?,
        firstErn: data['firstErn'] as String?,
        galacxyId: data['galacxyId'] as String?,
        staffRankCode: data['staffRankCode'] as String?,
        rosterRankCode: data['rosterRankCode'] as String?,
        fleetMembership: data['fleetMembership'] as String?,
        fleetCode: data['fleetCode'] as String?,
        baseport: data['baseport'] as String?,
        specialDutyCode: (data['specialDutyCode'] as List<dynamic>?)?.cast<String>(),
        commander: data['commander'] as String?,
        dutyPlannedStartUtc: data['dutyPlannedStartUtc'] as String?,
        dutyPlannedStartLocal: data['dutyPlannedStartLocal'] as String?,
        dutyPlannedEndUtc: data['dutyPlannedEndUtc'] as String?,
        dutyPlannedEndLocal: data['dutyPlannedEndLocal'] as String?,
        dutySequenceWithinTrip: data['dutySequenceWithinTrip'] as int?,
        itemSequenceWithinDuty: data['itemSequenceWithinDuty'] as int?,
        lastDutyItem: data['lastDutyItem'] as String?,
        itemWorkCode: data['itemWorkCode'] as String?,
        patternId: data['patternId'] as int?,
        notificationUtc: data['notificationUtc'] as String?,
        acknowledgedUtc: data['acknowledgedUtc'] as String?,
        reliefQualified: (data['reliefQualified'] as List<dynamic>?)?.cast<String>(),
        companyEmail: data['companyEmail'] as String?,
        firstName: data['firstName'] as String?,
        otherName: data['otherName'] as String?,
        crewId: data['crewId'] as String?,
        showFirstName: data['showFirstName'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'crewName': crewName,
        'middleInitialsName': middleInitialsName,
        'surname': surname,
        'badgeName': badgeName,
        'currentErn': currentErn,
        'firstErn': firstErn,
        'galacxyId': galacxyId,
        'staffRankCode': staffRankCode,
        'rosterRankCode': rosterRankCode,
        'fleetMembership': fleetMembership,
        'fleetCode': fleetCode,
        'baseport': baseport,
        'specialDutyCode': specialDutyCode,
        'commander': commander,
        'dutyPlannedStartUtc': dutyPlannedStartUtc,
        'dutyPlannedStartLocal': dutyPlannedStartLocal,
        'dutyPlannedEndUtc': dutyPlannedEndUtc,
        'dutyPlannedEndLocal': dutyPlannedEndLocal,
        'dutySequenceWithinTrip': dutySequenceWithinTrip,
        'itemSequenceWithinDuty': itemSequenceWithinDuty,
        'lastDutyItem': lastDutyItem,
        'itemWorkCode': itemWorkCode,
        'patternId': patternId,
        'notificationUtc': notificationUtc,
        'acknowledgedUtc': acknowledgedUtc,
        'reliefQualified': reliefQualified,
        'companyEmail': companyEmail,
        'firstName': firstName,
        'otherName': otherName,
        'crewId': crewId,
        'showFirstName': showFirstName,
      };
}
