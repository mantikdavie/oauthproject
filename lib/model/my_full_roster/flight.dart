import 'dart:convert';

import 'credit_info.dart';
import 'crew.dart';

class Flight {
  String? carrierCode;
  int? flightNumber;
  String? scheduledFlightDate;
  String? departurePort;
  String? arrivalPort;
  int? sectorSequenceNumber;
  String? cancelled;
  String? aircraftType;
  String? stdUtc;
  String? stdLocal;
  String? etdUtc;
  String? etdLocal;
  String? atdUtc;
  String? atdLocal;
  String? staUtc;
  String? staLocal;
  String? etaUtc;
  String? etaLocal;
  String? ataUtc;
  String? ataLocal;
  double? blockHours;
  int? itemSequenceWithinDuty;
  String? lastDutyItem;
  String? itemWorkCode;
  String? sectorConnector;
  String? dutyTypeCode;
  String? ltdLocal;
  String? ltaLocal;
  String? ltdUtc;
  String? ltaUtc;
  List<String>? specialDutyCode;
  CreditInfo? creditInfo;
  int? creditHours;
  String? flightRef;
  String? sectorRef;
  bool? isFirstDutyItem;
  bool? isLastDutyItem;
  List<Crew>? crews;
  int? actBlkMins;
  int? pubBlkMins;
  String? pubStartTmUtc;
  String? pubEndTmUtc;
  String? pubStartTmLoc;
  String? pubEndTmLoc;
  String? actStartTmUtc;
  String? actEndTmUtc;
  String? actStartTmLoc;
  String? actEndTmLoc;

  Flight({
    this.carrierCode,
    this.flightNumber,
    this.scheduledFlightDate,
    this.departurePort,
    this.arrivalPort,
    this.sectorSequenceNumber,
    this.cancelled,
    this.aircraftType,
    this.stdUtc,
    this.stdLocal,
    this.etdUtc,
    this.etdLocal,
    this.atdUtc,
    this.atdLocal,
    this.staUtc,
    this.staLocal,
    this.etaUtc,
    this.etaLocal,
    this.ataUtc,
    this.ataLocal,
    this.blockHours,
    this.itemSequenceWithinDuty,
    this.lastDutyItem,
    this.itemWorkCode,
    this.sectorConnector,
    this.dutyTypeCode,
    this.ltdLocal,
    this.ltaLocal,
    this.ltdUtc,
    this.ltaUtc,
    this.specialDutyCode,
    this.creditInfo,
    this.creditHours,
    this.flightRef,
    this.sectorRef,
    this.isFirstDutyItem,
    this.isLastDutyItem,
    this.crews,
    this.actBlkMins,
    this.pubBlkMins,
    this.pubStartTmUtc,
    this.pubEndTmUtc,
    this.pubStartTmLoc,
    this.pubEndTmLoc,
    this.actStartTmUtc,
    this.actEndTmUtc,
    this.actStartTmLoc,
    this.actEndTmLoc,
  });

  factory Flight.fromJson(String str) => Flight.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Flight.fromMap(Map<String, dynamic> json) => Flight(
        carrierCode: json["carrierCode"],
        flightNumber: json["flightNumber"],
        scheduledFlightDate: json["scheduledFlightDate"],
        departurePort: json["departurePort"],
        arrivalPort: json["arrivalPort"],
        sectorSequenceNumber: json["sectorSequenceNumber"],
        cancelled: json["cancelled"],
        aircraftType: json["aircraftType"],
        stdUtc: json["stdUtc"],
        stdLocal: json["stdLocal"],
        etdUtc: json["etdUtc"],
        etdLocal: json["etdLocal"],
        atdUtc: json["atdUtc"],
        atdLocal: json["atdLocal"],
        staUtc: json["staUtc"],
        staLocal: json["staLocal"],
        etaUtc: json["etaUtc"],
        etaLocal: json["etaLocal"],
        ataUtc: json["ataUtc"],
        ataLocal: json["ataLocal"],
        blockHours: json["blockHours"]?.toDouble(),
        itemSequenceWithinDuty: json["itemSequenceWithinDuty"],
        lastDutyItem: json["lastDutyItem"],
        itemWorkCode: json["itemWorkCode"],
        sectorConnector: json["sectorConnector"],
        dutyTypeCode: json["dutyTypeCode"],
        ltdLocal: json["ltdLocal"],
        ltaLocal: json["ltaLocal"],
        ltdUtc: json["ltdUtc"],
        ltaUtc: json["ltaUtc"],
        specialDutyCode: json["specialDutyCode"] == null
            ? []
            : List<String>.from(json["specialDutyCode"]!.map((x) => x)),
        creditInfo: json["creditInfo"] == null
            ? null
            : CreditInfo.fromMap(json["creditInfo"]),
        creditHours: json["creditHours"],
        flightRef: json["flightRef"],
        sectorRef: json["sectorRef"],
        isFirstDutyItem: json["_isFirstDutyItem"],
        isLastDutyItem: json["_isLastDutyItem"],
        crews: json["crews"] == null
            ? []
            : List<Crew>.from(json["crews"]!.map((x) => Crew.fromMap(x))),
        actBlkMins: json["actBlkMins"],
        pubBlkMins: json["pubBlkMins"],
        pubStartTmUtc: json["pubStartTmUtc"],
        pubEndTmUtc: json["pubEndTmUtc"],
        pubStartTmLoc: json["pubStartTmLoc"],
        pubEndTmLoc: json["pubEndTmLoc"],
        actStartTmUtc: json["actStartTmUtc"],
        actEndTmUtc: json["actEndTmUtc"],
        actStartTmLoc: json["actStartTmLoc"],
        actEndTmLoc: json["actEndTmLoc"],
      );

  Map<String, dynamic> toMap() => {
        "carrierCode": carrierCode,
        "flightNumber": flightNumber,
        "scheduledFlightDate": scheduledFlightDate,
        "departurePort": departurePort,
        "arrivalPort": arrivalPort,
        "sectorSequenceNumber": sectorSequenceNumber,
        "cancelled": cancelled,
        "aircraftType": aircraftType,
        "stdUtc": stdUtc,
        "stdLocal": stdLocal,
        "etdUtc": etdUtc,
        "etdLocal": etdLocal,
        "atdUtc": atdUtc,
        "atdLocal": atdLocal,
        "staUtc": staUtc,
        "staLocal": staLocal,
        "etaUtc": etaUtc,
        "etaLocal": etaLocal,
        "ataUtc": ataUtc,
        "ataLocal": ataLocal,
        "blockHours": blockHours,
        "itemSequenceWithinDuty": itemSequenceWithinDuty,
        "lastDutyItem": lastDutyItem,
        "itemWorkCode": itemWorkCode,
        "sectorConnector": sectorConnector,
        "dutyTypeCode": dutyTypeCode,
        "ltdLocal": ltdLocal,
        "ltaLocal": ltaLocal,
        "ltdUtc": ltdUtc,
        "ltaUtc": ltaUtc,
        "specialDutyCode": specialDutyCode == null
            ? []
            : List<dynamic>.from(specialDutyCode!.map((x) => x)),
        "creditInfo": creditInfo?.toMap(),
        "creditHours": creditHours,
        "flightRef": flightRef,
        "sectorRef": sectorRef,
        "_isFirstDutyItem": isFirstDutyItem,
        "_isLastDutyItem": isLastDutyItem,
        "crews": crews == null
            ? []
            : List<dynamic>.from(crews!.map((x) => x.toMap())),
        "actBlkMins": actBlkMins,
        "pubBlkMins": pubBlkMins,
        "pubStartTmUtc": pubStartTmUtc,
        "pubEndTmUtc": pubEndTmUtc,
        "pubStartTmLoc": pubStartTmLoc,
        "pubEndTmLoc": pubEndTmLoc,
        "actStartTmUtc": actStartTmUtc,
        "actEndTmUtc": actEndTmUtc,
        "actStartTmLoc": actStartTmLoc,
        "actEndTmLoc": actEndTmLoc,
      };
}
