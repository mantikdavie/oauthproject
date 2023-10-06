import 'dart:convert';

class CumulativeBlockHour {
  String? rostPdCd;
  String? fleetGrpCd;
  String? crewContractTypCd;
  String? cityCd;
  String? subRankCd;
  String? planActInd;
  String? payQty;

  CumulativeBlockHour({
    this.rostPdCd,
    this.fleetGrpCd,
    this.crewContractTypCd,
    this.cityCd,
    this.subRankCd,
    this.planActInd,
    this.payQty,
  });

  @override
  String toString() {
    return 'CumulativeBlockHour(rostPdCd: $rostPdCd, fleetGrpCd: $fleetGrpCd, crewContractTypCd: $crewContractTypCd, cityCd: $cityCd, subRankCd: $subRankCd, planActInd: $planActInd, payQty: $payQty)';
  }

  factory CumulativeBlockHour.fromMap(Map<String, dynamic> data) {
    return CumulativeBlockHour(
      rostPdCd: data['ROST_PD_CD'] as String?,
      fleetGrpCd: data['FLEET_GRP_CD'] as String?,
      crewContractTypCd: data['CREW_CONTRACT_TYP_CD'] as String?,
      cityCd: data['CITY_CD'] as String?,
      subRankCd: data['SUB_RANK_CD'] as String?,
      planActInd: data['PLAN_ACT_IND'] as String?,
      payQty: data['PAY_QTY'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'ROST_PD_CD': rostPdCd,
        'FLEET_GRP_CD': fleetGrpCd,
        'CREW_CONTRACT_TYP_CD': crewContractTypCd,
        'CITY_CD': cityCd,
        'SUB_RANK_CD': subRankCd,
        'PLAN_ACT_IND': planActInd,
        'PAY_QTY': payQty,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CumulativeBlockHour].
  factory CumulativeBlockHour.fromJson(String data) {
    return CumulativeBlockHour.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CumulativeBlockHour] to a JSON string.
  String toJson() => json.encode(toMap());

  CumulativeBlockHour copyWith({
    String? rostPdCd,
    String? fleetGrpCd,
    String? crewContractTypCd,
    String? cityCd,
    String? subRankCd,
    String? planActInd,
    String? payQty,
  }) {
    return CumulativeBlockHour(
      rostPdCd: rostPdCd ?? this.rostPdCd,
      fleetGrpCd: fleetGrpCd ?? this.fleetGrpCd,
      crewContractTypCd: crewContractTypCd ?? this.crewContractTypCd,
      cityCd: cityCd ?? this.cityCd,
      subRankCd: subRankCd ?? this.subRankCd,
      planActInd: planActInd ?? this.planActInd,
      payQty: payQty ?? this.payQty,
    );
  }
}
