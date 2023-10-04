import 'dart:convert';

class CosmicRadiation {
  String? startMonth;
  List<dynamic>? dosage;

  CosmicRadiation({this.startMonth, this.dosage});

  @override
  String toString() {
    return 'CosmicRadiation(startMonth: $startMonth, dosage: $dosage)';
  }

  factory CosmicRadiation.fromMap(Map<String, dynamic> data) {
    return CosmicRadiation(
      startMonth: data['startMonth'] as String?,
      dosage: data['dosage'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toMap() => {
        'startMonth': startMonth,
        'dosage': dosage,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CosmicRadiation].
  factory CosmicRadiation.fromJson(String data) {
    return CosmicRadiation.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CosmicRadiation] to a JSON string.
  String toJson() => json.encode(toMap());

  CosmicRadiation copyWith({
    String? startMonth,
    List<int>? dosage,
  }) {
    return CosmicRadiation(
      startMonth: startMonth ?? this.startMonth,
      dosage: dosage ?? this.dosage,
    );
  }
}
