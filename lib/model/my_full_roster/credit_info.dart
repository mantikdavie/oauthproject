import 'dart:convert';

class CreditInfo {
  int? rosterPeriod;
  dynamic indicator;
  dynamic factor;
  dynamic hours;

  CreditInfo({this.rosterPeriod, this.indicator, this.factor, this.hours});

  factory CreditInfo.fromMap(Map<String, dynamic> data) => CreditInfo(
        rosterPeriod: data['rosterPeriod'] as int?,
        indicator: data['indicator'] as dynamic,
        factor: data['factor'] as dynamic,
        hours: data['hours'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'rosterPeriod': rosterPeriod,
        'indicator': indicator,
        'factor': factor,
        'hours': hours,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CreditInfo].
  factory CreditInfo.fromJson(String data) {
    return CreditInfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CreditInfo] to a JSON string.
  String toJson() => json.encode(toMap());
}
