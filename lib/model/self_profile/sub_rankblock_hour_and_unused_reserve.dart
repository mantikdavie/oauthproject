import 'dart:convert';

class SubRankblockHourAndUnusedReserve {
  String? rankCd;
  String? ownrOrgUnitCd;
  String? locCd;
  String? fleetCd;
  String? crewTypCd;
  String? pdCd;
  String? resCount;
  String? searchNm;
  String? fleetGrpCd;
  String? subRankCd;
  String? accProratedBlkMinsQty;
  String? effFmDtmHkg;
  String? effToDtmHkg;

  SubRankblockHourAndUnusedReserve({
    this.rankCd,
    this.ownrOrgUnitCd,
    this.locCd,
    this.fleetCd,
    this.crewTypCd,
    this.pdCd,
    this.resCount,
    this.searchNm,
    this.fleetGrpCd,
    this.subRankCd,
    this.accProratedBlkMinsQty,
    this.effFmDtmHkg,
    this.effToDtmHkg,
  });

  @override
  String toString() {
    return 'SubRankblockHourAndUnusedReserve(rankCd: $rankCd, ownrOrgUnitCd: $ownrOrgUnitCd, locCd: $locCd, fleetCd: $fleetCd, crewTypCd: $crewTypCd, pdCd: $pdCd, resCount: $resCount, searchNm: $searchNm, fleetGrpCd: $fleetGrpCd, subRankCd: $subRankCd, accProratedBlkMinsQty: $accProratedBlkMinsQty, effFmDtmHkg: $effFmDtmHkg, effToDtmHkg: $effToDtmHkg)';
  }

  factory SubRankblockHourAndUnusedReserve.fromMap(Map<String, dynamic> data) {
    return SubRankblockHourAndUnusedReserve(
      rankCd: data['RANK_CD'] as String?,
      ownrOrgUnitCd: data['OWNR_ORG_UNIT_CD'] as String?,
      locCd: data['LOC_CD'] as String?,
      fleetCd: data['FLEET_CD'] as String?,
      crewTypCd: data['CREW_TYP_CD'] as String?,
      pdCd: data['PD_CD'] as String?,
      resCount: data['RES_COUNT'] as String?,
      searchNm: data['SEARCH_NM'] as String?,
      fleetGrpCd: data['FLEET_GRP_CD'] as String?,
      subRankCd: data['SUB_RANK_CD'] as String?,
      accProratedBlkMinsQty: data['ACC_PRORATED_BLK_MINS_QTY'] as String?,
      effFmDtmHkg: data['EFF_FM_DTM_HKG'] as String?,
      effToDtmHkg: data['EFF_TO_DTM_HKG'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'RANK_CD': rankCd,
        'OWNR_ORG_UNIT_CD': ownrOrgUnitCd,
        'LOC_CD': locCd,
        'FLEET_CD': fleetCd,
        'CREW_TYP_CD': crewTypCd,
        'PD_CD': pdCd,
        'RES_COUNT': resCount,
        'SEARCH_NM': searchNm,
        'FLEET_GRP_CD': fleetGrpCd,
        'SUB_RANK_CD': subRankCd,
        'ACC_PRORATED_BLK_MINS_QTY': accProratedBlkMinsQty,
        'EFF_FM_DTM_HKG': effFmDtmHkg,
        'EFF_TO_DTM_HKG': effToDtmHkg,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SubRankblockHourAndUnusedReserve].
  factory SubRankblockHourAndUnusedReserve.fromJson(String data) {
    return SubRankblockHourAndUnusedReserve.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SubRankblockHourAndUnusedReserve] to a JSON string.
  String toJson() => json.encode(toMap());

  SubRankblockHourAndUnusedReserve copyWith({
    String? rankCd,
    String? ownrOrgUnitCd,
    String? locCd,
    String? fleetCd,
    String? crewTypCd,
    String? pdCd,
    String? resCount,
    String? searchNm,
    String? fleetGrpCd,
    String? subRankCd,
    String? accProratedBlkMinsQty,
    String? effFmDtmHkg,
    String? effToDtmHkg,
  }) {
    return SubRankblockHourAndUnusedReserve(
      rankCd: rankCd ?? this.rankCd,
      ownrOrgUnitCd: ownrOrgUnitCd ?? this.ownrOrgUnitCd,
      locCd: locCd ?? this.locCd,
      fleetCd: fleetCd ?? this.fleetCd,
      crewTypCd: crewTypCd ?? this.crewTypCd,
      pdCd: pdCd ?? this.pdCd,
      resCount: resCount ?? this.resCount,
      searchNm: searchNm ?? this.searchNm,
      fleetGrpCd: fleetGrpCd ?? this.fleetGrpCd,
      subRankCd: subRankCd ?? this.subRankCd,
      accProratedBlkMinsQty:
          accProratedBlkMinsQty ?? this.accProratedBlkMinsQty,
      effFmDtmHkg: effFmDtmHkg ?? this.effFmDtmHkg,
      effToDtmHkg: effToDtmHkg ?? this.effToDtmHkg,
    );
  }
}
