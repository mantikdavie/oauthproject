import 'dart:convert';

class SeniorityList {
  String? crewId;
  int? seniorityOrder;
  String? rank;
  String? fleet;
  String? base;

  SeniorityList({
    this.crewId,
    this.seniorityOrder,
    this.rank,
    this.fleet,
    this.base,
  });

  @override
  String toString() {
    return 'SenorityList(crewId: $crewId, seniorityOrder: $seniorityOrder, rank: $rank, fleet: $fleet, base: $base)';
  }

  factory SeniorityList.fromMap(Map<String, dynamic> data) => SeniorityList(
        crewId: data['crewId'] as String?,
        seniorityOrder: data['seniorityOrder'] as int?,
        rank: data['rank'] as String?,
        fleet: data['fleet'] as String?,
        base: data['base'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'crewId': crewId,
        'seniorityOrder': seniorityOrder,
        'rank': rank,
        'fleet': fleet,
        'base': base,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SeniorityList].
  factory SeniorityList.fromJson(String data) {
    return SeniorityList.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SeniorityList] to a JSON string.
  String toJson() => json.encode(toMap());

  SeniorityList copyWith({
    String? crewId,
    int? seniorityOrder,
    String? rank,
    String? fleet,
    String? base,
  }) {
    return SeniorityList(
      crewId: crewId ?? this.crewId,
      seniorityOrder: seniorityOrder ?? this.seniorityOrder,
      rank: rank ?? this.rank,
      fleet: fleet ?? this.fleet,
      base: base ?? this.base,
    );
  }
}
