import 'dart:convert';

import 'crew_array.dart';

class SimCrewList {
  String? requestType;
  String? respCode;
  String? respMessage;
  String? dutyStartDate;
  String? dutyCode;
  int? numberOfEntries;
  List<CrewArray>? crewArray;
  int? crewListSectionRecLength;

  SimCrewList({
    this.requestType,
    this.respCode,
    this.respMessage,
    this.dutyStartDate,
    this.dutyCode,
    this.numberOfEntries,
    this.crewArray,
    this.crewListSectionRecLength,
  });

  @override
  String toString() {
    return 'SimCrewList(requestType: $requestType, respCode: $respCode, respMessage: $respMessage, dutyStartDate: $dutyStartDate, dutyCode: $dutyCode, numberOfEntries: $numberOfEntries, crewArray: $crewArray, crewListSectionRecLength: $crewListSectionRecLength)';
  }

  factory SimCrewList.fromMap(Map<String, dynamic> data) => SimCrewList(
        requestType: data['requestType'] as String?,
        respCode: data['respCode'] as String?,
        respMessage: data['respMessage'] as String?,
        dutyStartDate: data['dutyStartDate'] as String?,
        dutyCode: data['dutyCode'] as String?,
        numberOfEntries: data['numberOfEntries'] as int?,
        crewArray: (data['crewArray'] as List<dynamic>?)
            ?.map((e) => CrewArray.fromMap(e as Map<String, dynamic>))
            .toList(),
        crewListSectionRecLength: data['crewListSectionRecLength'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'requestType': requestType,
        'respCode': respCode,
        'respMessage': respMessage,
        'dutyStartDate': dutyStartDate,
        'dutyCode': dutyCode,
        'numberOfEntries': numberOfEntries,
        'crewArray': crewArray?.map((e) => e.toMap()).toList(),
        'crewListSectionRecLength': crewListSectionRecLength,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SimCrewList].
  factory SimCrewList.fromJson(String data) {
    return SimCrewList.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SimCrewList] to a JSON string.
  String toJson() => json.encode(toMap());

  SimCrewList copyWith({
    String? requestType,
    String? respCode,
    String? respMessage,
    String? dutyStartDate,
    String? dutyCode,
    int? numberOfEntries,
    List<CrewArray>? crewArray,
    int? crewListSectionRecLength,
  }) {
    return SimCrewList(
      requestType: requestType ?? this.requestType,
      respCode: respCode ?? this.respCode,
      respMessage: respMessage ?? this.respMessage,
      dutyStartDate: dutyStartDate ?? this.dutyStartDate,
      dutyCode: dutyCode ?? this.dutyCode,
      numberOfEntries: numberOfEntries ?? this.numberOfEntries,
      crewArray: crewArray ?? this.crewArray,
      crewListSectionRecLength:
          crewListSectionRecLength ?? this.crewListSectionRecLength,
    );
  }
}
