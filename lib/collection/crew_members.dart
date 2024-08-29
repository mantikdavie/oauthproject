import 'package:isar/isar.dart';

part 'crew_members.g.dart';

@collection
class PilotProfile {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value, unique: true)
  String? rosterName;
  @Index(type: IndexType.value, unique: true)
  String? galacxyId;
  String? company;
  String? crewCategory;
  String? crewCategorySeniority;
  String? qualificationSeniority;
  String? specialDutyCode;
  String? badgeName;
  String? surname;
  String? basePort;
  String? aircraftTypeQualificationCode;
  String? specialDutyCodeDescription;
  String? commander;
  List<String>? reliefQualified;
  String? currentErn;
  String? primaryPhone;
  String? companyEmail;
  List<int>? dutyRecords;
}

@collection
class CabinCrewProfile {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value, unique: true)
  String? rosterName;
  String? company;
  String? aircraftTypeQualificationCode;
  String? fleetCode;
  String? crewCategory;
  String? crewCategorySeniority;
  String? qualificationSeniority;
  String? specialDutyCode;
  String? badgeName;
  String? basePort;
  @Index(type: IndexType.value, unique: true)
  String? galacxyId;
  String? languageCode;
  String? specialDutyCodeDescription;
  String? currentErn;
  String? companyEmail;
  List<int>? dutyRecords;
}
