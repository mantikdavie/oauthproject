import 'dart:convert';

import 'duty_list.dart';

class CrewDutiesFull {
  String? maxAckDateInDuties;
  String? rosterDiscloseFlag;
  String? masterDiscloseFlag;
  String? swapRequestApprovedUnread;
  bool? hasOutstandingAcknowledgement;
  List<DutyList>? dutyList;

  CrewDutiesFull({
    this.maxAckDateInDuties,
    this.rosterDiscloseFlag,
    this.masterDiscloseFlag,
    this.swapRequestApprovedUnread,
    this.hasOutstandingAcknowledgement,
    this.dutyList,
  });

  @override
  String toString() {
    return 'CrewDutiesFull(maxAckDateInDuties: $maxAckDateInDuties, rosterDiscloseFlag: $rosterDiscloseFlag, masterDiscloseFlag: $masterDiscloseFlag, swapRequestApprovedUnread: $swapRequestApprovedUnread, hasOutstandingAcknowledgement: $hasOutstandingAcknowledgement, dutyList: $dutyList)';
  }

  factory CrewDutiesFull.fromMap(Map<String, dynamic> data) {
    return CrewDutiesFull(
      maxAckDateInDuties: data['maxAckDateInDuties'] as String?,
      rosterDiscloseFlag: data['rosterDiscloseFlag'] as String?,
      masterDiscloseFlag: data['masterDiscloseFlag'] as String?,
      swapRequestApprovedUnread: data['swapRequestApprovedUnread'] as String?,
      hasOutstandingAcknowledgement:
          data['hasOutstandingAcknowledgement'] as bool?,
      dutyList: (data['dutyList'] as List<dynamic>?)
          ?.map((e) => DutyList.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'maxAckDateInDuties': maxAckDateInDuties,
        'rosterDiscloseFlag': rosterDiscloseFlag,
        'masterDiscloseFlag': masterDiscloseFlag,
        'swapRequestApprovedUnread': swapRequestApprovedUnread,
        'hasOutstandingAcknowledgement': hasOutstandingAcknowledgement,
        'dutyList': dutyList?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CrewDutiesFull].
  factory CrewDutiesFull.fromJson(String data) {
    return CrewDutiesFull.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CrewDutiesFull] to a JSON string.
  String toJson() => json.encode(toMap());

  CrewDutiesFull copyWith({
    String? maxAckDateInDuties,
    String? rosterDiscloseFlag,
    String? masterDiscloseFlag,
    String? swapRequestApprovedUnread,
    bool? hasOutstandingAcknowledgement,
    List<DutyList>? dutyList,
  }) {
    return CrewDutiesFull(
      maxAckDateInDuties: maxAckDateInDuties ?? this.maxAckDateInDuties,
      rosterDiscloseFlag: rosterDiscloseFlag ?? this.rosterDiscloseFlag,
      masterDiscloseFlag: masterDiscloseFlag ?? this.masterDiscloseFlag,
      swapRequestApprovedUnread:
          swapRequestApprovedUnread ?? this.swapRequestApprovedUnread,
      hasOutstandingAcknowledgement:
          hasOutstandingAcknowledgement ?? this.hasOutstandingAcknowledgement,
      dutyList: dutyList ?? this.dutyList,
    );
  }
}
