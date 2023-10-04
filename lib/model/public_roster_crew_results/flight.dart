import 'dart:convert';

import 'credit_info.dart';

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
  dynamic etdUtc;
  dynamic etdLocal;
  String? atdUtc;
  String? atdLocal;
  String? staUtc;
  String? staLocal;
  dynamic etaUtc;
  dynamic etaLocal;
  String? ataUtc;
  String? ataLocal;
  double? blockHours;
  int? itemSequenceWithinDuty;
  String? lastDutyItem;
  String? itemWorkCode;
  dynamic sectorConnector;
  dynamic dutyTypeCode;
  String? ltdLocal;
  String? ltaLocal;
  String? ltdUtc;
  String? ltaUtc;
  List<dynamic>? specialDutyCode;
  CreditInfo? creditInfo;
  int? creditHours;
  String? flightRef;
  String? sectorRef;
  bool? isFirstDutyItem;
  bool? isLastDutyItem;

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
  });

  @override
  String toString() {
    return 'Flight(carrierCode: $carrierCode, flightNumber: $flightNumber, scheduledFlightDate: $scheduledFlightDate, departurePort: $departurePort, arrivalPort: $arrivalPort, sectorSequenceNumber: $sectorSequenceNumber, cancelled: $cancelled, aircraftType: $aircraftType, stdUtc: $stdUtc, stdLocal: $stdLocal, etdUtc: $etdUtc, etdLocal: $etdLocal, atdUtc: $atdUtc, atdLocal: $atdLocal, staUtc: $staUtc, staLocal: $staLocal, etaUtc: $etaUtc, etaLocal: $etaLocal, ataUtc: $ataUtc, ataLocal: $ataLocal, blockHours: $blockHours, itemSequenceWithinDuty: $itemSequenceWithinDuty, lastDutyItem: $lastDutyItem, itemWorkCode: $itemWorkCode, sectorConnector: $sectorConnector, dutyTypeCode: $dutyTypeCode, ltdLocal: $ltdLocal, ltaLocal: $ltaLocal, ltdUtc: $ltdUtc, ltaUtc: $ltaUtc, specialDutyCode: $specialDutyCode, creditInfo: $creditInfo, creditHours: $creditHours, flightRef: $flightRef, sectorRef: $sectorRef, isFirstDutyItem: $isFirstDutyItem, isLastDutyItem: $isLastDutyItem)';
  }

  factory Flight.fromMap(Map<String, dynamic> data) => Flight(
        carrierCode: data['carrierCode'] as String?,
        flightNumber: data['flightNumber'] as int?,
        scheduledFlightDate: data['scheduledFlightDate'] as String?,
        departurePort: data['departurePort'] as String?,
        arrivalPort: data['arrivalPort'] as String?,
        sectorSequenceNumber: data['sectorSequenceNumber'] as int?,
        cancelled: data['cancelled'] as String?,
        aircraftType: data['aircraftType'] as String?,
        stdUtc: data['stdUtc'] as String?,
        stdLocal: data['stdLocal'] as String?,
        etdUtc: data['etdUtc'] as dynamic,
        etdLocal: data['etdLocal'] as dynamic,
        atdUtc: data['atdUtc'] as String?,
        atdLocal: data['atdLocal'] as String?,
        staUtc: data['staUtc'] as String?,
        staLocal: data['staLocal'] as String?,
        etaUtc: data['etaUtc'] as dynamic,
        etaLocal: data['etaLocal'] as dynamic,
        ataUtc: data['ataUtc'] as String?,
        ataLocal: data['ataLocal'] as String?,
        blockHours: (data['blockHours'] as num?)?.toDouble(),
        itemSequenceWithinDuty: data['itemSequenceWithinDuty'] as int?,
        lastDutyItem: data['lastDutyItem'] as String?,
        itemWorkCode: data['itemWorkCode'] as String?,
        sectorConnector: data['sectorConnector'] as dynamic,
        dutyTypeCode: data['dutyTypeCode'] as dynamic,
        ltdLocal: data['ltdLocal'] as String?,
        ltaLocal: data['ltaLocal'] as String?,
        ltdUtc: data['ltdUtc'] as String?,
        ltaUtc: data['ltaUtc'] as String?,
        specialDutyCode: data['specialDutyCode'] as List<dynamic>?,
        creditInfo: data['creditInfo'] == null
            ? null
            : CreditInfo.fromMap(data['creditInfo'] as Map<String, dynamic>),
        creditHours: data['creditHours'] as int?,
        flightRef: data['flightRef'] as String?,
        sectorRef: data['sectorRef'] as String?,
        isFirstDutyItem: data['_isFirstDutyItem'] as bool?,
        isLastDutyItem: data['_isLastDutyItem'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'carrierCode': carrierCode,
        'flightNumber': flightNumber,
        'scheduledFlightDate': scheduledFlightDate,
        'departurePort': departurePort,
        'arrivalPort': arrivalPort,
        'sectorSequenceNumber': sectorSequenceNumber,
        'cancelled': cancelled,
        'aircraftType': aircraftType,
        'stdUtc': stdUtc,
        'stdLocal': stdLocal,
        'etdUtc': etdUtc,
        'etdLocal': etdLocal,
        'atdUtc': atdUtc,
        'atdLocal': atdLocal,
        'staUtc': staUtc,
        'staLocal': staLocal,
        'etaUtc': etaUtc,
        'etaLocal': etaLocal,
        'ataUtc': ataUtc,
        'ataLocal': ataLocal,
        'blockHours': blockHours,
        'itemSequenceWithinDuty': itemSequenceWithinDuty,
        'lastDutyItem': lastDutyItem,
        'itemWorkCode': itemWorkCode,
        'sectorConnector': sectorConnector,
        'dutyTypeCode': dutyTypeCode,
        'ltdLocal': ltdLocal,
        'ltaLocal': ltaLocal,
        'ltdUtc': ltdUtc,
        'ltaUtc': ltaUtc,
        'specialDutyCode': specialDutyCode,
        'creditInfo': creditInfo?.toMap(),
        'creditHours': creditHours,
        'flightRef': flightRef,
        'sectorRef': sectorRef,
        '_isFirstDutyItem': isFirstDutyItem,
        '_isLastDutyItem': isLastDutyItem,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Flight].
  factory Flight.fromJson(String data) {
    return Flight.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Flight] to a JSON string.
  String toJson() => json.encode(toMap());

  Flight copyWith({
    String? carrierCode,
    int? flightNumber,
    String? scheduledFlightDate,
    String? departurePort,
    String? arrivalPort,
    int? sectorSequenceNumber,
    String? cancelled,
    String? aircraftType,
    String? stdUtc,
    String? stdLocal,
    dynamic etdUtc,
    dynamic etdLocal,
    String? atdUtc,
    String? atdLocal,
    String? staUtc,
    String? staLocal,
    dynamic etaUtc,
    dynamic etaLocal,
    String? ataUtc,
    String? ataLocal,
    double? blockHours,
    int? itemSequenceWithinDuty,
    String? lastDutyItem,
    String? itemWorkCode,
    dynamic sectorConnector,
    dynamic dutyTypeCode,
    String? ltdLocal,
    String? ltaLocal,
    String? ltdUtc,
    String? ltaUtc,
    List<dynamic>? specialDutyCode,
    CreditInfo? creditInfo,
    int? creditHours,
    String? flightRef,
    String? sectorRef,
    bool? isFirstDutyItem,
    bool? isLastDutyItem,
  }) {
    return Flight(
      carrierCode: carrierCode ?? this.carrierCode,
      flightNumber: flightNumber ?? this.flightNumber,
      scheduledFlightDate: scheduledFlightDate ?? this.scheduledFlightDate,
      departurePort: departurePort ?? this.departurePort,
      arrivalPort: arrivalPort ?? this.arrivalPort,
      sectorSequenceNumber: sectorSequenceNumber ?? this.sectorSequenceNumber,
      cancelled: cancelled ?? this.cancelled,
      aircraftType: aircraftType ?? this.aircraftType,
      stdUtc: stdUtc ?? this.stdUtc,
      stdLocal: stdLocal ?? this.stdLocal,
      etdUtc: etdUtc ?? this.etdUtc,
      etdLocal: etdLocal ?? this.etdLocal,
      atdUtc: atdUtc ?? this.atdUtc,
      atdLocal: atdLocal ?? this.atdLocal,
      staUtc: staUtc ?? this.staUtc,
      staLocal: staLocal ?? this.staLocal,
      etaUtc: etaUtc ?? this.etaUtc,
      etaLocal: etaLocal ?? this.etaLocal,
      ataUtc: ataUtc ?? this.ataUtc,
      ataLocal: ataLocal ?? this.ataLocal,
      blockHours: blockHours ?? this.blockHours,
      itemSequenceWithinDuty:
          itemSequenceWithinDuty ?? this.itemSequenceWithinDuty,
      lastDutyItem: lastDutyItem ?? this.lastDutyItem,
      itemWorkCode: itemWorkCode ?? this.itemWorkCode,
      sectorConnector: sectorConnector ?? this.sectorConnector,
      dutyTypeCode: dutyTypeCode ?? this.dutyTypeCode,
      ltdLocal: ltdLocal ?? this.ltdLocal,
      ltaLocal: ltaLocal ?? this.ltaLocal,
      ltdUtc: ltdUtc ?? this.ltdUtc,
      ltaUtc: ltaUtc ?? this.ltaUtc,
      specialDutyCode: specialDutyCode ?? this.specialDutyCode,
      creditInfo: creditInfo ?? this.creditInfo,
      creditHours: creditHours ?? this.creditHours,
      flightRef: flightRef ?? this.flightRef,
      sectorRef: sectorRef ?? this.sectorRef,
      isFirstDutyItem: isFirstDutyItem ?? this.isFirstDutyItem,
      isLastDutyItem: isLastDutyItem ?? this.isLastDutyItem,
    );
  }
}
