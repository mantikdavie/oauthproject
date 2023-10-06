import 'dart:convert';

import 'duty_list.dart';

class SelfDutiesFull {
  String? maxAckDateInDuties;
  String? rosterDiscloseFlag;
  String? masterDiscloseFlag;
  String? swapRequestApprovedUnread;
  bool? hasOutstandingAcknowledgement;
  List<DutyList>? dutyList;

  SelfDutiesFull({
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

  factory SelfDutiesFull.fromMap(Map<String, dynamic> data) {
    return SelfDutiesFull(
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
  /// Parses the string and returns the resulting Json object as [SelfDutiesFull].
  factory SelfDutiesFull.fromJson(String data) {
    return SelfDutiesFull.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SelfDutiesFull] to a JSON string.
  String toJson() => json.encode(toMap());

  SelfDutiesFull copyWith({
    String? maxAckDateInDuties,
    String? rosterDiscloseFlag,
    String? masterDiscloseFlag,
    String? swapRequestApprovedUnread,
    bool? hasOutstandingAcknowledgement,
    List<DutyList>? dutyList,
  }) {
    return SelfDutiesFull(
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
