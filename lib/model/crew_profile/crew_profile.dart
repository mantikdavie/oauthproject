import 'dart:convert';

import 'package:flutter/material.dart';

import 'cosmic_radiation.dart';
import 'cumulative_block_hour.dart';
import 'privacy.dart';
import 'profile_picture.dart';
import 'qualification.dart';
import 'sub_rankblock_hour_and_unused_reserve.dart';
import 'travel_doc.dart';

class CrewProfile {
  String? firstErn;
  String? airCraftServiceType;
  String? aircraftTypeCode;
  String? badgeName;
  String? baseport;
  String? contractType;
  String? countryOfBirth;
  String? crewId;
  String? crewSeniority;
  String? currentErn;
  String? dateOfBirth;
  String? dateOfJoin;
  String? email;
  String? employmentCompany;
  dynamic familyMemberName;
  dynamic familyPhone;
  dynamic faxNumber;
  dynamic firstName;
  String? fleet;
  String? fleetMembership;
  String? galacxyId;
  String? gender;
  int? icaoNumber;
  String? licenseNumber;
  String? mailboxNumber;
  String? mobilePhone;
  String? otherName;
  String? passportName;
  String? permBase;
  dynamic preferredPort;
  String? primaryPhone;
  Privacy? privacy;
  DateTime? profileBatchUpdatedAt;
  String? rankCode;
  List<dynamic>? reliefQualified;
  String? resignationDate;
  String? retirementDate;
  dynamic secondaryPhone;
  int? seniorityOrder;
  String? surname;
  DateTime? updatedAt;
  List<TravelDoc>? travelDoc;
  DateTime? travelDocUpdatedAt;
  List<Qualification>? qualification;
  DateTime? qualificationUpdatedAt;
  CosmicRadiation? cosmicRadiation;
  DateTime? cosmicRadiationUpdatedAt;
  String? appointmentCode;
  String? category;
  String? categoryEffDate;
  String? companyEmail;
  String? fleetCompany;
  dynamic homeport;
  String? mailBoxNumber;
  dynamic nationality;
  List<dynamic>? paDialect;
  String? passportType;
  dynamic specialMeal;
  dynamic specialMealEffDate;
  int? v;
  List<dynamic>? crewNotes;
  DateTime? privacyUpdatedAt;
  ProfilePicture? profilePicture;
  String? qualifyRpRq;
  SubRankblockHourAndUnusedReserve? subRankblockHourAndUnusedReserve;
  DateTime? subRankblockHourAndUnusedReserveUpdatedAt;
  List<CumulativeBlockHour>? cumulativeBlockHours;
  DateTime? cumulativeBlockHoursUpdatedAt;
  String? lastUpdatedView;
  DateTime? lastUpdatedViewUpdatedAt;
  dynamic trainerType;
  List<dynamic>? actualAllowance;
  List<dynamic>? friends;
  List<dynamic>? blocklist;
  List<dynamic>? requestOut;
  List<dynamic>? requestIn;

  CrewProfile({
    this.firstErn,
    this.airCraftServiceType,
    this.aircraftTypeCode,
    this.badgeName,
    this.baseport,
    this.contractType,
    this.countryOfBirth,
    this.crewId,
    this.crewSeniority,
    this.currentErn,
    this.dateOfBirth,
    this.dateOfJoin,
    this.email,
    this.employmentCompany,
    this.familyMemberName,
    this.familyPhone,
    this.faxNumber,
    this.firstName,
    this.fleet,
    this.fleetMembership,
    this.galacxyId,
    this.gender,
    this.icaoNumber,
    this.licenseNumber,
    this.mailboxNumber,
    this.mobilePhone,
    this.otherName,
    this.passportName,
    this.permBase,
    this.preferredPort,
    this.primaryPhone,
    this.privacy,
    this.profileBatchUpdatedAt,
    this.rankCode,
    this.reliefQualified,
    this.resignationDate,
    this.retirementDate,
    this.secondaryPhone,
    this.seniorityOrder,
    this.surname,
    this.updatedAt,
    this.travelDoc,
    this.travelDocUpdatedAt,
    this.qualification,
    this.qualificationUpdatedAt,
    this.cosmicRadiation,
    this.cosmicRadiationUpdatedAt,
    this.appointmentCode,
    this.category,
    this.categoryEffDate,
    this.companyEmail,
    this.fleetCompany,
    this.homeport,
    this.mailBoxNumber,
    this.nationality,
    this.paDialect,
    this.passportType,
    this.specialMeal,
    this.specialMealEffDate,
    this.v,
    this.crewNotes,
    this.privacyUpdatedAt,
    this.profilePicture,
    this.qualifyRpRq,
    this.subRankblockHourAndUnusedReserve,
    this.subRankblockHourAndUnusedReserveUpdatedAt,
    this.cumulativeBlockHours,
    this.cumulativeBlockHoursUpdatedAt,
    this.lastUpdatedView,
    this.lastUpdatedViewUpdatedAt,
    this.trainerType,
    this.actualAllowance,
    this.friends,
    this.blocklist,
    this.requestOut,
    this.requestIn,
  });

  @override
  String toString() {
    return 'CrewProfile(firstErn: $firstErn, airCraftServiceType: $airCraftServiceType, aircraftTypeCode: $aircraftTypeCode, badgeName: $badgeName, baseport: $baseport, contractType: $contractType, countryOfBirth: $countryOfBirth, crewId: $crewId, crewSeniority: $crewSeniority, currentErn: $currentErn, dateOfBirth: $dateOfBirth, dateOfJoin: $dateOfJoin, email: $email, employmentCompany: $employmentCompany, familyMemberName: $familyMemberName, familyPhone: $familyPhone, faxNumber: $faxNumber, firstName: $firstName, fleet: $fleet, fleetMembership: $fleetMembership, galacxyId: $galacxyId, gender: $gender, icaoNumber: $icaoNumber, licenseNumber: $licenseNumber, mailboxNumber: $mailboxNumber, mobilePhone: $mobilePhone, otherName: $otherName, passportName: $passportName, permBase: $permBase, preferredPort: $preferredPort, primaryPhone: $primaryPhone, privacy: $privacy, profileBatchUpdatedAt: $profileBatchUpdatedAt, rankCode: $rankCode, reliefQualified: $reliefQualified, resignationDate: $resignationDate, retirementDate: $retirementDate, secondaryPhone: $secondaryPhone, seniorityOrder: $seniorityOrder, surname: $surname, updatedAt: $updatedAt, travelDoc: $travelDoc, travelDocUpdatedAt: $travelDocUpdatedAt, qualification: $qualification, qualificationUpdatedAt: $qualificationUpdatedAt, cosmicRadiation: $cosmicRadiation, cosmicRadiationUpdatedAt: $cosmicRadiationUpdatedAt, appointmentCode: $appointmentCode, category: $category, categoryEffDate: $categoryEffDate, companyEmail: $companyEmail, fleetCompany: $fleetCompany, homeport: $homeport, mailBoxNumber: $mailBoxNumber, nationality: $nationality, paDialect: $paDialect, passportType: $passportType, specialMeal: $specialMeal, specialMealEffDate: $specialMealEffDate, v: $v, crewNotes: $crewNotes, privacyUpdatedAt: $privacyUpdatedAt, profilePicture: $profilePicture, qualifyRpRq: $qualifyRpRq, subRankblockHourAndUnusedReserve: $subRankblockHourAndUnusedReserve, subRankblockHourAndUnusedReserveUpdatedAt: $subRankblockHourAndUnusedReserveUpdatedAt, cumulativeBlockHours: $cumulativeBlockHours, cumulativeBlockHoursUpdatedAt: $cumulativeBlockHoursUpdatedAt, lastUpdatedView: $lastUpdatedView, lastUpdatedViewUpdatedAt: $lastUpdatedViewUpdatedAt, trainerType: $trainerType, actualAllowance: $actualAllowance, friends: $friends, blocklist: $blocklist, requestOut: $requestOut, requestIn: $requestIn)';
  }

  factory CrewProfile.fromMap(Map<String, dynamic> data) => CrewProfile(
        firstErn: data['firstErn'] as String?,
        airCraftServiceType: data['airCraftServiceType'] as String?,
        aircraftTypeCode: data['aircraftTypeCode'] as String?,
        badgeName: data['badgeName'] as String?,
        baseport: data['baseport'] as String?,
        contractType: data['contractType'] as String?,
        countryOfBirth: data['countryOfBirth'] as String?,
        crewId: data['crewId'] as String?,
        crewSeniority: data['crewSeniority'] as String?,
        currentErn: data['currentErn'] as String?,
        dateOfBirth: data['dateOfBirth'] as String?,
        dateOfJoin: data['dateOfJoin'] as String?,
        email: data['email'] as String?,
        employmentCompany: data['employmentCompany'] as String?,
        familyMemberName: data['familyMemberName'] as dynamic,
        familyPhone: data['familyPhone'] as dynamic,
        faxNumber: data['faxNumber'] as dynamic,
        firstName: data['firstName'] as dynamic,
        fleet: data['fleet'] as String?,
        fleetMembership: data['fleetMembership'] as String?,
        galacxyId: data['galacxyId'] as String?,
        gender: data['gender'] as String?,
        icaoNumber: data['icaoNumber'] as int?,
        licenseNumber: data['licenseNumber'] as String?,
        mailboxNumber: data['mailboxNumber'] as String?,
        mobilePhone: data['mobilePhone'] as String?,
        otherName: data['otherName'] as String?,
        passportName: data['passportName'] as String?,
        permBase: data['permBase'] as String?,
        preferredPort: data['preferredPort'] as dynamic,
        primaryPhone: data['primaryPhone'] as String?,
        privacy: data['privacy'] == null
            ? null
            : Privacy.fromMap(data['privacy'] as Map<String, dynamic>),
        profileBatchUpdatedAt: data['profileBatchUpdatedAt'] == null
            ? null
            : DateTime.parse(data['profileBatchUpdatedAt'] as String),
        rankCode: data['rankCode'] as String?,
        reliefQualified: data['reliefQualified'] as List<dynamic>?,
        resignationDate: data['resignationDate'] as String?,
        retirementDate: data['retirementDate'] as String?,
        secondaryPhone: data['secondaryPhone'] as dynamic,
        seniorityOrder: data['seniorityOrder'] as int?,
        surname: data['surname'] as String?,
        updatedAt: data['updatedAt'] == null
            ? null
            : DateTime.parse(data['updatedAt'] as String),
        travelDoc: (data['travelDoc'] as List<dynamic>?)
            ?.map((e) => TravelDoc.fromMap(e as Map<String, dynamic>))
            .toList(),
        travelDocUpdatedAt: data['travelDocUpdatedAt'] == null
            ? null
            : DateTime.parse(data['travelDocUpdatedAt'] as String),
        qualification: (data['qualification'] as List<dynamic>?)
            ?.map((e) => Qualification.fromMap(e as Map<String, dynamic>))
            .toList(),
        qualificationUpdatedAt: data['qualificationUpdatedAt'] == null
            ? null
            : DateTime.parse(data['qualificationUpdatedAt'] as String),
        cosmicRadiation: data['cosmicRadiation'] == null
            ? null
            : CosmicRadiation.fromMap(
                data['cosmicRadiation'] as Map<String, dynamic>),
        cosmicRadiationUpdatedAt: data['cosmicRadiationUpdatedAt'] == null
            ? null
            : DateTime.parse(data['cosmicRadiationUpdatedAt'] as String),
        appointmentCode: data['appointmentCode'] as String?,
        category: data['category'] as String?,
        categoryEffDate: data['categoryEffDate'] as String?,
        companyEmail: data['companyEmail'] as String?,
        fleetCompany: data['fleetCompany'] as String?,
        homeport: data['homeport'] as dynamic,
        mailBoxNumber: data['mailBoxNumber'] as String?,
        nationality: data['nationality'] as dynamic,
        paDialect: data['paDialect'] as List<dynamic>?,
        passportType: data['passportType'] as String?,
        specialMeal: data['specialMeal'] as dynamic,
        specialMealEffDate: data['specialMealEffDate'] as dynamic,
        v: data['__v'] as int?,
        crewNotes: data['crewNotes'] as List<dynamic>?,
        privacyUpdatedAt: data['privacyUpdatedAt'] == null
            ? null
            : DateTime.parse(data['privacyUpdatedAt'] as String),
        profilePicture: data['profilePicture'] == null
            ? null
            : ProfilePicture.fromMap(
                data['profilePicture'] as Map<String, dynamic>),
        qualifyRpRq: data['qualifyRpRq'] as String?,
        subRankblockHourAndUnusedReserve:
            data['subRankblockHourAndUnusedReserve'] == null
                ? null
                : SubRankblockHourAndUnusedReserve.fromMap(
                    data['subRankblockHourAndUnusedReserve']
                        as Map<String, dynamic>),
        subRankblockHourAndUnusedReserveUpdatedAt:
            data['subRankblockHourAndUnusedReserveUpdatedAt'] == null
                ? null
                : DateTime.parse(
                    data['subRankblockHourAndUnusedReserveUpdatedAt']
                        as String),
        cumulativeBlockHours: (data['cumulativeBlockHours'] as List<dynamic>?)
            ?.map((e) => CumulativeBlockHour.fromMap(e as Map<String, dynamic>))
            .toList(),
        cumulativeBlockHoursUpdatedAt: data['cumulativeBlockHoursUpdatedAt'] ==
                null
            ? null
            : DateTime.parse(data['cumulativeBlockHoursUpdatedAt'] as String),
        lastUpdatedView: data['lastUpdatedView'] as String?,
        lastUpdatedViewUpdatedAt: data['lastUpdatedViewUpdatedAt'] == null
            ? null
            : DateTime.parse(data['lastUpdatedViewUpdatedAt'] as String),
        trainerType: data['trainerType'] as dynamic,
        actualAllowance: data['actualAllowance'] as List<dynamic>?,
        friends: data['friends'] as List<dynamic>?,
        blocklist: data['blocklist'] as List<dynamic>?,
        requestOut: data['requestOut'] as List<dynamic>?,
        requestIn: data['requestIn'] as List<dynamic>?,
      );

  Map<String, dynamic> toMap() => {
        'firstErn': firstErn,
        'airCraftServiceType': airCraftServiceType,
        'aircraftTypeCode': aircraftTypeCode,
        'badgeName': badgeName,
        'baseport': baseport,
        'contractType': contractType,
        'countryOfBirth': countryOfBirth,
        'crewId': crewId,
        'crewSeniority': crewSeniority,
        'currentErn': currentErn,
        'dateOfBirth': dateOfBirth,
        'dateOfJoin': dateOfJoin,
        'email': email,
        'employmentCompany': employmentCompany,
        'familyMemberName': familyMemberName,
        'familyPhone': familyPhone,
        'faxNumber': faxNumber,
        'firstName': firstName,
        'fleet': fleet,
        'fleetMembership': fleetMembership,
        'galacxyId': galacxyId,
        'gender': gender,
        'icaoNumber': icaoNumber,
        'licenseNumber': licenseNumber,
        'mailboxNumber': mailboxNumber,
        'mobilePhone': mobilePhone,
        'otherName': otherName,
        'passportName': passportName,
        'permBase': permBase,
        'preferredPort': preferredPort,
        'primaryPhone': primaryPhone,
        'privacy': privacy?.toMap(),
        'profileBatchUpdatedAt': profileBatchUpdatedAt?.toIso8601String(),
        'rankCode': rankCode,
        'reliefQualified': reliefQualified,
        'resignationDate': resignationDate,
        'retirementDate': retirementDate,
        'secondaryPhone': secondaryPhone,
        'seniorityOrder': seniorityOrder,
        'surname': surname,
        'updatedAt': updatedAt?.toIso8601String(),
        'travelDoc': travelDoc?.map((e) => e.toMap()).toList(),
        'travelDocUpdatedAt': travelDocUpdatedAt?.toIso8601String(),
        'qualification': qualification?.map((e) => e.toMap()).toList(),
        'qualificationUpdatedAt': qualificationUpdatedAt?.toIso8601String(),
        'cosmicRadiation': cosmicRadiation?.toMap(),
        'cosmicRadiationUpdatedAt': cosmicRadiationUpdatedAt?.toIso8601String(),
        'appointmentCode': appointmentCode,
        'category': category,
        'categoryEffDate': categoryEffDate,
        'companyEmail': companyEmail,
        'fleetCompany': fleetCompany,
        'homeport': homeport,
        'mailBoxNumber': mailBoxNumber,
        'nationality': nationality,
        'paDialect': paDialect,
        'passportType': passportType,
        'specialMeal': specialMeal,
        'specialMealEffDate': specialMealEffDate,
        '__v': v,
        'crewNotes': crewNotes,
        'privacyUpdatedAt': privacyUpdatedAt?.toIso8601String(),
        'profilePicture': profilePicture?.toMap(),
        'qualifyRpRq': qualifyRpRq,
        'subRankblockHourAndUnusedReserve':
            subRankblockHourAndUnusedReserve?.toMap(),
        'subRankblockHourAndUnusedReserveUpdatedAt':
            subRankblockHourAndUnusedReserveUpdatedAt?.toIso8601String(),
        'cumulativeBlockHours':
            cumulativeBlockHours?.map((e) => e.toMap()).toList(),
        'cumulativeBlockHoursUpdatedAt':
            cumulativeBlockHoursUpdatedAt?.toIso8601String(),
        'lastUpdatedView': lastUpdatedView,
        'lastUpdatedViewUpdatedAt': lastUpdatedViewUpdatedAt?.toIso8601String(),
        'trainerType': trainerType,
        'actualAllowance': actualAllowance,
        'friends': friends,
        'blocklist': blocklist,
        'requestOut': requestOut,
        'requestIn': requestIn,
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
    String? firstErn,
    String? airCraftServiceType,
    String? aircraftTypeCode,
    String? badgeName,
    String? baseport,
    String? contractType,
    String? countryOfBirth,
    String? crewId,
    String? crewSeniority,
    String? currentErn,
    String? dateOfBirth,
    String? dateOfJoin,
    String? email,
    String? employmentCompany,
    dynamic familyMemberName,
    dynamic familyPhone,
    dynamic faxNumber,
    dynamic firstName,
    String? fleet,
    String? fleetMembership,
    String? galacxyId,
    String? gender,
    int? icaoNumber,
    String? licenseNumber,
    String? mailboxNumber,
    String? mobilePhone,
    String? otherName,
    String? passportName,
    String? permBase,
    dynamic preferredPort,
    String? primaryPhone,
    Privacy? privacy,
    DateTime? profileBatchUpdatedAt,
    String? rankCode,
    List<dynamic>? reliefQualified,
    String? resignationDate,
    String? retirementDate,
    dynamic secondaryPhone,
    int? seniorityOrder,
    String? surname,
    DateTime? updatedAt,
    List<TravelDoc>? travelDoc,
    DateTime? travelDocUpdatedAt,
    List<Qualification>? qualification,
    DateTime? qualificationUpdatedAt,
    CosmicRadiation? cosmicRadiation,
    DateTime? cosmicRadiationUpdatedAt,
    String? appointmentCode,
    String? category,
    String? categoryEffDate,
    String? companyEmail,
    String? fleetCompany,
    dynamic homeport,
    String? mailBoxNumber,
    dynamic nationality,
    List<dynamic>? paDialect,
    String? passportType,
    dynamic specialMeal,
    dynamic specialMealEffDate,
    int? v,
    List<dynamic>? crewNotes,
    DateTime? privacyUpdatedAt,
    ProfilePicture? profilePicture,
    String? qualifyRpRq,
    SubRankblockHourAndUnusedReserve? subRankblockHourAndUnusedReserve,
    DateTime? subRankblockHourAndUnusedReserveUpdatedAt,
    List<CumulativeBlockHour>? cumulativeBlockHours,
    DateTime? cumulativeBlockHoursUpdatedAt,
    String? lastUpdatedView,
    DateTime? lastUpdatedViewUpdatedAt,
    dynamic trainerType,
    List<dynamic>? actualAllowance,
    List<dynamic>? friends,
    List<dynamic>? blocklist,
    List<dynamic>? requestOut,
    List<dynamic>? requestIn,
  }) {
    return CrewProfile(
      firstErn: firstErn ?? this.firstErn,
      airCraftServiceType: airCraftServiceType ?? this.airCraftServiceType,
      aircraftTypeCode: aircraftTypeCode ?? this.aircraftTypeCode,
      badgeName: badgeName ?? this.badgeName,
      baseport: baseport ?? this.baseport,
      contractType: contractType ?? this.contractType,
      countryOfBirth: countryOfBirth ?? this.countryOfBirth,
      crewId: crewId ?? this.crewId,
      crewSeniority: crewSeniority ?? this.crewSeniority,
      currentErn: currentErn ?? this.currentErn,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      dateOfJoin: dateOfJoin ?? this.dateOfJoin,
      email: email ?? this.email,
      employmentCompany: employmentCompany ?? this.employmentCompany,
      familyMemberName: familyMemberName ?? this.familyMemberName,
      familyPhone: familyPhone ?? this.familyPhone,
      faxNumber: faxNumber ?? this.faxNumber,
      firstName: firstName ?? this.firstName,
      fleet: fleet ?? this.fleet,
      fleetMembership: fleetMembership ?? this.fleetMembership,
      galacxyId: galacxyId ?? this.galacxyId,
      gender: gender ?? this.gender,
      icaoNumber: icaoNumber ?? this.icaoNumber,
      licenseNumber: licenseNumber ?? this.licenseNumber,
      mailboxNumber: mailboxNumber ?? this.mailboxNumber,
      mobilePhone: mobilePhone ?? this.mobilePhone,
      otherName: otherName ?? this.otherName,
      passportName: passportName ?? this.passportName,
      permBase: permBase ?? this.permBase,
      preferredPort: preferredPort ?? this.preferredPort,
      primaryPhone: primaryPhone ?? this.primaryPhone,
      privacy: privacy ?? this.privacy,
      profileBatchUpdatedAt:
          profileBatchUpdatedAt ?? this.profileBatchUpdatedAt,
      rankCode: rankCode ?? this.rankCode,
      reliefQualified: reliefQualified ?? this.reliefQualified,
      resignationDate: resignationDate ?? this.resignationDate,
      retirementDate: retirementDate ?? this.retirementDate,
      secondaryPhone: secondaryPhone ?? this.secondaryPhone,
      seniorityOrder: seniorityOrder ?? this.seniorityOrder,
      surname: surname ?? this.surname,
      updatedAt: updatedAt ?? this.updatedAt,
      travelDoc: travelDoc ?? this.travelDoc,
      travelDocUpdatedAt: travelDocUpdatedAt ?? this.travelDocUpdatedAt,
      qualification: qualification ?? this.qualification,
      qualificationUpdatedAt:
          qualificationUpdatedAt ?? this.qualificationUpdatedAt,
      cosmicRadiation: cosmicRadiation ?? this.cosmicRadiation,
      cosmicRadiationUpdatedAt:
          cosmicRadiationUpdatedAt ?? this.cosmicRadiationUpdatedAt,
      appointmentCode: appointmentCode ?? this.appointmentCode,
      category: category ?? this.category,
      categoryEffDate: categoryEffDate ?? this.categoryEffDate,
      companyEmail: companyEmail ?? this.companyEmail,
      fleetCompany: fleetCompany ?? this.fleetCompany,
      homeport: homeport ?? this.homeport,
      mailBoxNumber: mailBoxNumber ?? this.mailBoxNumber,
      nationality: nationality ?? this.nationality,
      paDialect: paDialect ?? this.paDialect,
      passportType: passportType ?? this.passportType,
      specialMeal: specialMeal ?? this.specialMeal,
      specialMealEffDate: specialMealEffDate ?? this.specialMealEffDate,
      v: v ?? this.v,
      crewNotes: crewNotes ?? this.crewNotes,
      privacyUpdatedAt: privacyUpdatedAt ?? this.privacyUpdatedAt,
      profilePicture: profilePicture ?? this.profilePicture,
      qualifyRpRq: qualifyRpRq ?? this.qualifyRpRq,
      subRankblockHourAndUnusedReserve: subRankblockHourAndUnusedReserve ??
          this.subRankblockHourAndUnusedReserve,
      subRankblockHourAndUnusedReserveUpdatedAt:
          subRankblockHourAndUnusedReserveUpdatedAt ??
              this.subRankblockHourAndUnusedReserveUpdatedAt,
      cumulativeBlockHours: cumulativeBlockHours ?? this.cumulativeBlockHours,
      cumulativeBlockHoursUpdatedAt:
          cumulativeBlockHoursUpdatedAt ?? this.cumulativeBlockHoursUpdatedAt,
      lastUpdatedView: lastUpdatedView ?? this.lastUpdatedView,
      lastUpdatedViewUpdatedAt:
          lastUpdatedViewUpdatedAt ?? this.lastUpdatedViewUpdatedAt,
      trainerType: trainerType ?? this.trainerType,
      actualAllowance: actualAllowance ?? this.actualAllowance,
      friends: friends ?? this.friends,
      blocklist: blocklist ?? this.blocklist,
      requestOut: requestOut ?? this.requestOut,
      requestIn: requestIn ?? this.requestIn,
    );
  }
}
