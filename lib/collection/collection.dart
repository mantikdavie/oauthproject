import 'package:isar/isar.dart';

part 'collection.g.dart';

@collection
class FlightRecord {
  Id id = Isar.autoIncrement;
  String? flightNumber;
  DateTime? flightDate;
  String? departurePort;
  String? arrivalPort;
  
  @Index(type: IndexType.value)
  List<String>? crewMemberIds;
}

@collection
class CrewMember {
  Id id = Isar.autoIncrement;
  String? name;
  String? position;
}