import 'dart:convert';

class Privacy {
  bool? primaryPhone;
  bool? secondaryPhone;
  bool? mobilePhone;
  bool? emailAddress;
  bool? seniorityList;
  bool? sendRoster;
  String? rosterPrivacy;
  bool? hideFromAddFriendSearch;
  bool? profilePicture;

  Privacy({
    this.primaryPhone,
    this.secondaryPhone,
    this.mobilePhone,
    this.emailAddress,
    this.seniorityList,
    this.sendRoster,
    this.rosterPrivacy,
    this.hideFromAddFriendSearch,
    this.profilePicture,
  });

  @override
  String toString() {
    return 'Privacy(primaryPhone: $primaryPhone, secondaryPhone: $secondaryPhone, mobilePhone: $mobilePhone, emailAddress: $emailAddress, seniorityList: $seniorityList, sendRoster: $sendRoster, rosterPrivacy: $rosterPrivacy, hideFromAddFriendSearch: $hideFromAddFriendSearch, profilePicture: $profilePicture)';
  }

  factory Privacy.fromMap(Map<String, dynamic> data) => Privacy(
        primaryPhone: data['primaryPhone'] as bool?,
        secondaryPhone: data['secondaryPhone'] as bool?,
        mobilePhone: data['mobilePhone'] as bool?,
        emailAddress: data['emailAddress'] as bool?,
        seniorityList: data['seniorityList'] as bool?,
        sendRoster: data['sendRoster'] as bool?,
        rosterPrivacy: data['rosterPrivacy'] as String?,
        hideFromAddFriendSearch: data['hideFromAddFriendSearch'] as bool?,
        profilePicture: data['profilePicture'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'primaryPhone': primaryPhone,
        'secondaryPhone': secondaryPhone,
        'mobilePhone': mobilePhone,
        'emailAddress': emailAddress,
        'seniorityList': seniorityList,
        'sendRoster': sendRoster,
        'rosterPrivacy': rosterPrivacy,
        'hideFromAddFriendSearch': hideFromAddFriendSearch,
        'profilePicture': profilePicture,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Privacy].
  factory Privacy.fromJson(String data) {
    return Privacy.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Privacy] to a JSON string.
  String toJson() => json.encode(toMap());

  Privacy copyWith({
    bool? primaryPhone,
    bool? secondaryPhone,
    bool? mobilePhone,
    bool? emailAddress,
    bool? seniorityList,
    bool? sendRoster,
    String? rosterPrivacy,
    bool? hideFromAddFriendSearch,
    bool? profilePicture,
  }) {
    return Privacy(
      primaryPhone: primaryPhone ?? this.primaryPhone,
      secondaryPhone: secondaryPhone ?? this.secondaryPhone,
      mobilePhone: mobilePhone ?? this.mobilePhone,
      emailAddress: emailAddress ?? this.emailAddress,
      seniorityList: seniorityList ?? this.seniorityList,
      sendRoster: sendRoster ?? this.sendRoster,
      rosterPrivacy: rosterPrivacy ?? this.rosterPrivacy,
      hideFromAddFriendSearch:
          hideFromAddFriendSearch ?? this.hideFromAddFriendSearch,
      profilePicture: profilePicture ?? this.profilePicture,
    );
  }
}
