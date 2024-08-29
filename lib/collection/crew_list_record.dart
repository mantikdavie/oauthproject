import 'package:isar/isar.dart';

part 'crew_list_record.g.dart';

@collection
class CrewListRecord {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  int? dutyRecordId;

  @Index(type: IndexType.value)
  String? flightNumber;

  @Index(type: IndexType.value)
  DateTime? flightDate;

  String? departurePort;
  String? arrivalPort;
  String? aircraftType;

  List<Pilot>? pilots;
  List<CabinCrew>? cabinCrews;
}

@embedded
class Pilot {
  String? rosterName;
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
}

@embedded
class CabinCrew {
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
  String? galacxyId;
  String? languageCode;
  String? specialDutyCodeDescription;
}