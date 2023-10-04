import 'dart:convert';

class Qualification {
  String? id;
  String? qualificationCode;
  String? aircraftTypeCode;
  String? qualificationDueDate;
  String? plannedRenewalDate;

  Qualification({
    this.id,
    this.qualificationCode,
    this.aircraftTypeCode,
    this.qualificationDueDate,
    this.plannedRenewalDate,
  });

  @override
  String toString() {
    return 'Qualification(id: $id, qualificationCode: $qualificationCode, aircraftTypeCode: $aircraftTypeCode, qualificationDueDate: $qualificationDueDate, plannedRenewalDate: $plannedRenewalDate)';
  }

  factory Qualification.fromMap(Map<String, dynamic> data) => Qualification(
        id: data['_id'] as String?,
        qualificationCode: data['qualificationCode'] as String?,
        aircraftTypeCode: data['aircraftTypeCode'] as String?,
        qualificationDueDate: data['qualificationDueDate'] as String?,
        plannedRenewalDate: data['plannedRenewalDate'] as String?,
      );

  Map<String, dynamic> toMap() => {
        '_id': id,
        'qualificationCode': qualificationCode,
        'aircraftTypeCode': aircraftTypeCode,
        'qualificationDueDate': qualificationDueDate,
        'plannedRenewalDate': plannedRenewalDate,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Qualification].
  factory Qualification.fromJson(String data) {
    return Qualification.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Qualification] to a JSON string.
  String toJson() => json.encode(toMap());

  Qualification copyWith({
    String? id,
    String? qualificationCode,
    String? aircraftTypeCode,
    String? qualificationDueDate,
    String? plannedRenewalDate,
  }) {
    return Qualification(
      id: id ?? this.id,
      qualificationCode: qualificationCode ?? this.qualificationCode,
      aircraftTypeCode: aircraftTypeCode ?? this.aircraftTypeCode,
      qualificationDueDate: qualificationDueDate ?? this.qualificationDueDate,
      plannedRenewalDate: plannedRenewalDate ?? this.plannedRenewalDate,
    );
  }
}
