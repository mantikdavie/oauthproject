import 'dart:convert';

import 'duty_list.dart';

class MyFullRoster {
  String? maxAckDateInDuties;
  String? rosterDiscloseFlag;
  String? masterDiscloseFlag;
  String? swapRequestApprovedUnread;
  bool? hasOutstandingAcknowledgement;
  List<DutyList>? dutyList;

  MyFullRoster({
    this.maxAckDateInDuties,
    this.rosterDiscloseFlag,
    this.masterDiscloseFlag,
    this.swapRequestApprovedUnread,
    this.hasOutstandingAcknowledgement,
    this.dutyList,
  });

  factory MyFullRoster.fromMap(Map<String, dynamic> data) => MyFullRoster(
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
  /// Parses the string and returns the resulting Json object as [MyFullRoster].
  factory MyFullRoster.fromJson(String data) {
    return MyFullRoster.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MyFullRoster] to a JSON string.
  String toJson() => json.encode(toMap());
}
