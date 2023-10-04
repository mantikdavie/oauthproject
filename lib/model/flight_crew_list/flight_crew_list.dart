import 'dart:convert';

import 'cabin_crew.dart';
import 'flight_crew.dart';

class FlightCrewList {
  String? requestType;
  String? respCode;
  String? respMessage;
  String? crewType;
  String? flightNumber;
  String? departurePort;
  String? arrivalPort;
  String? flightDate;
  String? tripDate;
  String? departureLocalTimestamp;
  String? arrivalLocalTimestamp;
  String? aircraftType;
  int? numberOfFlightCrew;
  int? numberOfCabinCrew;
  List<FlightCrew>? flightCrews;
  List<CabinCrew>? cabinCrews;

  FlightCrewList({
    this.requestType,
    this.respCode,
    this.respMessage,
    this.crewType,
    this.flightNumber,
    this.departurePort,
    this.arrivalPort,
    this.flightDate,
    this.tripDate,
    this.departureLocalTimestamp,
    this.arrivalLocalTimestamp,
    this.aircraftType,
    this.numberOfFlightCrew,
    this.numberOfCabinCrew,
    this.flightCrews,
    this.cabinCrews,
  });

  @override
  String toString() {
    return 'FlightCrewList(requestType: $requestType, respCode: $respCode, respMessage: $respMessage, crewType: $crewType, flightNumber: $flightNumber, departurePort: $departurePort, arrivalPort: $arrivalPort, flightDate: $flightDate, tripDate: $tripDate, departureLocalTimestamp: $departureLocalTimestamp, arrivalLocalTimestamp: $arrivalLocalTimestamp, aircraftType: $aircraftType, numberOfFlightCrew: $numberOfFlightCrew, numberOfCabinCrew: $numberOfCabinCrew, flightCrews: $flightCrews, cabinCrews: $cabinCrews)';
  }

  factory FlightCrewList.fromMap(Map<String, dynamic> data) {
    return FlightCrewList(
      requestType: data['requestType'] as String?,
      respCode: data['respCode'] as String?,
      respMessage: data['respMessage'] as String?,
      crewType: data['crewType'] as String?,
      flightNumber: data['flightNumber'] as String?,
      departurePort: data['departurePort'] as String?,
      arrivalPort: data['arrivalPort'] as String?,
      flightDate: data['flightDate'] as String?,
      tripDate: data['tripDate'] as String?,
      departureLocalTimestamp: data['departureLocalTimestamp'] as String?,
      arrivalLocalTimestamp: data['arrivalLocalTimestamp'] as String?,
      aircraftType: data['aircraftType'] as String?,
      numberOfFlightCrew: data['numberOfFlightCrew'] as int?,
      numberOfCabinCrew: data['numberOfCabinCrew'] as int?,
      flightCrews: (data['flightCrews'] as List<dynamic>?)
          ?.map((e) => FlightCrew.fromMap(e as Map<String, dynamic>))
          .toList(),
      cabinCrews: (data['cabinCrews'] as List<dynamic>?)
          ?.map((e) => CabinCrew.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'requestType': requestType,
        'respCode': respCode,
        'respMessage': respMessage,
        'crewType': crewType,
        'flightNumber': flightNumber,
        'departurePort': departurePort,
        'arrivalPort': arrivalPort,
        'flightDate': flightDate,
        'tripDate': tripDate,
        'departureLocalTimestamp': departureLocalTimestamp,
        'arrivalLocalTimestamp': arrivalLocalTimestamp,
        'aircraftType': aircraftType,
        'numberOfFlightCrew': numberOfFlightCrew,
        'numberOfCabinCrew': numberOfCabinCrew,
        'flightCrews': flightCrews?.map((e) => e.toMap()).toList(),
        'cabinCrews': cabinCrews?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FlightCrewList].
  factory FlightCrewList.fromJson(String data) {
    return FlightCrewList.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FlightCrewList] to a JSON string.
  String toJson() => json.encode(toMap());

  FlightCrewList copyWith({
    String? requestType,
    String? respCode,
    String? respMessage,
    String? crewType,
    String? flightNumber,
    String? departurePort,
    String? arrivalPort,
    String? flightDate,
    String? tripDate,
    String? departureLocalTimestamp,
    String? arrivalLocalTimestamp,
    String? aircraftType,
    int? numberOfFlightCrew,
    int? numberOfCabinCrew,
    List<FlightCrew>? flightCrews,
    List<CabinCrew>? cabinCrews,
  }) {
    return FlightCrewList(
      requestType: requestType ?? this.requestType,
      respCode: respCode ?? this.respCode,
      respMessage: respMessage ?? this.respMessage,
      crewType: crewType ?? this.crewType,
      flightNumber: flightNumber ?? this.flightNumber,
      departurePort: departurePort ?? this.departurePort,
      arrivalPort: arrivalPort ?? this.arrivalPort,
      flightDate: flightDate ?? this.flightDate,
      tripDate: tripDate ?? this.tripDate,
      departureLocalTimestamp:
          departureLocalTimestamp ?? this.departureLocalTimestamp,
      arrivalLocalTimestamp:
          arrivalLocalTimestamp ?? this.arrivalLocalTimestamp,
      aircraftType: aircraftType ?? this.aircraftType,
      numberOfFlightCrew: numberOfFlightCrew ?? this.numberOfFlightCrew,
      numberOfCabinCrew: numberOfCabinCrew ?? this.numberOfCabinCrew,
      flightCrews: flightCrews ?? this.flightCrews,
      cabinCrews: cabinCrews ?? this.cabinCrews,
    );
  }
}
