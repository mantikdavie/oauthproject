import 'dart:convert';

import 'privacy.dart';
import 'profile_picture.dart';

class CrewProfile {
  String? id;
  String? firstErn;
  String? aircraftTypeCode;
  String? badgeName;
  String? baseport;
  String? crewId;
  String? crewSeniority;
  String? currentErn;
  String? employmentCompany;
  String? firstName;
  String? fleet;
  String? fleetMembership;
  String? galacxyId;
  String? otherName;
  String? primaryPhone;
  Privacy? privacy;
  String? rankCode;
  List<dynamic>? reliefQualified;
  String? surname;
  String? companyEmail;
  ProfilePicture? profilePicture;

  CrewProfile({
    this.id,
    this.firstErn,
    this.aircraftTypeCode,
    this.badgeName,
    this.baseport,
    this.crewId,
    this.crewSeniority,
    this.currentErn,
    this.employmentCompany,
    this.firstName,
    this.fleet,
    this.fleetMembership,
    this.galacxyId,
    this.otherName,
    this.primaryPhone,
    this.privacy,
    this.rankCode,
    this.reliefQualified,
    this.surname,
    this.companyEmail,
    this.profilePicture,
  });

  @override
  String toString() {
    return 'CrewProfile(id: $id, firstErn: $firstErn, aircraftTypeCode: $aircraftTypeCode, badgeName: $badgeName, baseport: $baseport, crewId: $crewId, crewSeniority: $crewSeniority, currentErn: $currentErn, employmentCompany: $employmentCompany, firstName: $firstName, fleet: $fleet, fleetMembership: $fleetMembership, galacxyId: $galacxyId, otherName: $otherName, primaryPhone: $primaryPhone, privacy: $privacy, rankCode: $rankCode, reliefQualified: $reliefQualified, surname: $surname, companyEmail: $companyEmail, profilePicture: $profilePicture)';
  }

  factory CrewProfile.fromMap(Map<String, dynamic> data) => CrewProfile(
        id: data['_id'] as String?,
        firstErn: data['firstErn'] as String?,
        aircraftTypeCode: data['aircraftTypeCode'] as String?,
        badgeName: data['badgeName'] as String?,
        baseport: data['baseport'] as String?,
        crewId: data['crewId'] as String?,
        crewSeniority: data['crewSeniority'] as String?,
        currentErn: data['currentErn'] as String?,
        employmentCompany: data['employmentCompany'] as String?,
        firstName: data['firstName'] as String?,
        fleet: data['fleet'] as String?,
        fleetMembership: data['fleetMembership'] as String?,
        galacxyId: data['galacxyId'] as String?,
        otherName: data['otherName'] as String?,
        primaryPhone: data['primaryPhone'] as String?,
        privacy: data['privacy'] == null
            ? null
            : Privacy.fromMap(data['privacy'] as Map<String, dynamic>),
        rankCode: data['rankCode'] as String?,
        reliefQualified: data['reliefQualified'] as List<dynamic>?,
        surname: data['surname'] as String?,
        companyEmail: data['companyEmail'] as String?,
        profilePicture: data['profilePicture'] == null
            ? null
            : ProfilePicture.fromMap(
                data['profilePicture'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        '_id': id,
        'firstErn': firstErn,
        'aircraftTypeCode': aircraftTypeCode,
        'badgeName': badgeName,
        'baseport': baseport,
        'crewId': crewId,
        'crewSeniority': crewSeniority,
        'currentErn': currentErn,
        'employmentCompany': employmentCompany,
        'firstName': firstName,
        'fleet': fleet,
        'fleetMembership': fleetMembership,
        'galacxyId': galacxyId,
        'otherName': otherName,
        'primaryPhone': primaryPhone,
        'privacy': privacy?.toMap(),
        'rankCode': rankCode,
        'reliefQualified': reliefQualified,
        'surname': surname,
        'companyEmail': companyEmail,
        'profilePicture': profilePicture?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CrewProfile].
  factory CrewProfile.fromJson(String data) {
    return CrewProfile.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CrewProfile] to a JSON string.
  String toJson() => json.encode(toMap());

  CrewProfile copyWith({
    String? id,
    String? firstErn,
    String? aircraftTypeCode,
    String? badgeName,
    String? baseport,
    String? crewId,
    String? crewSeniority,
    String? currentErn,
    String? employmentCompany,
    String? firstName,
    String? fleet,
    String? fleetMembership,
    String? galacxyId,
    String? otherName,
    String? primaryPhone,
    Privacy? privacy,
    String? rankCode,
    List<dynamic>? reliefQualified,
    String? surname,
    String? companyEmail,
    ProfilePicture? profilePicture,
  }) {
    return CrewProfile(
      id: id ?? this.id,
      firstErn: firstErn ?? this.firstErn,
      aircraftTypeCode: aircraftTypeCode ?? this.aircraftTypeCode,
      badgeName: badgeName ?? this.badgeName,
      baseport: baseport ?? this.baseport,
      crewId: crewId ?? this.crewId,
      crewSeniority: crewSeniority ?? this.crewSeniority,
      currentErn: currentErn ?? this.currentErn,
      employmentCompany: employmentCompany ?? this.employmentCompany,
      firstName: firstName ?? this.firstName,
      fleet: fleet ?? this.fleet,
      fleetMembership: fleetMembership ?? this.fleetMembership,
      galacxyId: galacxyId ?? this.galacxyId,
      otherName: otherName ?? this.otherName,
      primaryPhone: primaryPhone ?? this.primaryPhone,
      privacy: privacy ?? this.privacy,
      rankCode: rankCode ?? this.rankCode,
      reliefQualified: reliefQualified ?? this.reliefQualified,
      surname: surname ?? this.surname,
      companyEmail: companyEmail ?? this.companyEmail,
      profilePicture: profilePicture ?? this.profilePicture,
    );
  }
}
