import 'dart:convert';

class TravelDoc {
  String? id;
  String? type;
  String? typeDesc;
  String? docType;
  String? docCountry;
  String? docNo;
  String? name;
  String? issueDate;
  String? expiryDate;
  String? issueCountry;

  TravelDoc({
    this.id,
    this.type,
    this.typeDesc,
    this.docType,
    this.docCountry,
    this.docNo,
    this.name,
    this.issueDate,
    this.expiryDate,
    this.issueCountry,
  });

  @override
  String toString() {
    return 'TravelDoc(id: $id, type: $type, typeDesc: $typeDesc, docType: $docType, docCountry: $docCountry, docNo: $docNo, name: $name, issueDate: $issueDate, expiryDate: $expiryDate, issueCountry: $issueCountry)';
  }

  factory TravelDoc.fromMap(Map<String, dynamic> data) => TravelDoc(
        id: data['_id'] as String?,
        type: data['type'] as String?,
        typeDesc: data['typeDesc'] as String?,
        docType: data['docType'] as String?,
        docCountry: data['docCountry'] as String?,
        docNo: data['docNo'] as String?,
        name: data['name'] as String?,
        issueDate: data['issueDate'] as String?,
        expiryDate: data['expiryDate'] as String?,
        issueCountry: data['issueCountry'] as String?,
      );

  Map<String, dynamic> toMap() => {
        '_id': id,
        'type': type,
        'typeDesc': typeDesc,
        'docType': docType,
        'docCountry': docCountry,
        'docNo': docNo,
        'name': name,
        'issueDate': issueDate,
        'expiryDate': expiryDate,
        'issueCountry': issueCountry,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TravelDoc].
  factory TravelDoc.fromJson(String data) {
    return TravelDoc.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TravelDoc] to a JSON string.
  String toJson() => json.encode(toMap());

  TravelDoc copyWith({
    String? id,
    String? type,
    String? typeDesc,
    String? docType,
    String? docCountry,
    String? docNo,
    String? name,
    String? issueDate,
    String? expiryDate,
    String? issueCountry,
  }) {
    return TravelDoc(
      id: id ?? this.id,
      type: type ?? this.type,
      typeDesc: typeDesc ?? this.typeDesc,
      docType: docType ?? this.docType,
      docCountry: docCountry ?? this.docCountry,
      docNo: docNo ?? this.docNo,
      name: name ?? this.name,
      issueDate: issueDate ?? this.issueDate,
      expiryDate: expiryDate ?? this.expiryDate,
      issueCountry: issueCountry ?? this.issueCountry,
    );
  }
}
