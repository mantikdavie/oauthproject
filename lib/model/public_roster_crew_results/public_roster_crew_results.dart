import 'dart:convert';

import 'duty_list.dart';

class PublicRosterCrewResults {
  List<DutyList>? dutyList;
  String? status;

  PublicRosterCrewResults({this.dutyList, this.status});

  @override
  String toString() {
    return 'PublicRosterCrewResults(dutyList: $dutyList, status: $status)';
  }

  factory PublicRosterCrewResults.fromMap(Map<String, dynamic> data) {
    return PublicRosterCrewResults(
      dutyList: (data['dutyList'] as List<dynamic>?)
          ?.map((e) => DutyList.fromMap(e as Map<String, dynamic>))
          .toList(),
      status: data['status'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'dutyList': dutyList?.map((e) => e.toMap()).toList(),
        'status': status,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PublicRosterCrewResults].
  factory PublicRosterCrewResults.fromJson(String data) {
    return PublicRosterCrewResults.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PublicRosterCrewResults] to a JSON string.
  String toJson() => json.encode(toMap());

  PublicRosterCrewResults copyWith({
    List<DutyList>? dutyList,
    String? status,
  }) {
    return PublicRosterCrewResults(
      dutyList: dutyList ?? this.dutyList,
      status: status ?? this.status,
    );
  }
}
