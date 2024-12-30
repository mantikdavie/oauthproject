import 'dart:convert';

class FlightDetailCrewList {
  final List<CrewMember> flightCrews;
  final List<CrewMember> cabinCrews;

  FlightDetailCrewList({required this.flightCrews, required this.cabinCrews});

  factory FlightDetailCrewList.fromJson(Map<String, dynamic> json) {
    return FlightDetailCrewList(
      flightCrews: (json['flightCrews'] as List)
          .map((i) => CrewMember.fromJson(i))
          .toList(),
      cabinCrews: (json['cabinCrews'] as List)
          .map((i) => CrewMember.fromJson(i))
          .toList(),
    );
  }
}

class CrewMember {
  final String crewId;
  final String crewBadgeName;
  final String crewCategory;
  final String basePort;

  CrewMember({
    required this.crewId,
    required this.crewBadgeName,
    required this.crewCategory,
    required this.basePort,
  });

  factory CrewMember.fromJson(Map<String, dynamic> json) {
    return CrewMember(
      crewId: json['crewId'],
      crewBadgeName: json['crewBadgeName'],
      crewCategory: json['crewCategory'],
      basePort: json['basePort'],
    );
  }
}