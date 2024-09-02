import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const dateShowFlex = 2;
const containerFlex = 11;

abstract class DutyInterface {
  String? get dutyCode;
  String? get dutyType;
  String? get dutyStartLocal;
  String? get dutyEndLocal;
  String? get dutyDesc;
  String? get patternCode;
  FlightInterface get flight;
  List<String>? get specialDutyCode;
}

abstract class FlightInterface {
  String? get carrierCode;
  int? get flightNumber;
  String? get scheduledFlightDate;
  String? get departurePort;
  String? get arrivalPort;
  int? get sectorSequenceNumber;
  String? get cancelled;
  String? get aircraftType;
  String? get stdUtc;
  String? get stdLocal;
  dynamic get etdUtc;
  dynamic get etdLocal;
  String? get atdUtc;
  String? get atdLocal;
  String? get staUtc;
  String? get staLocal;
  dynamic get etaUtc;
  dynamic get etaLocal;
  String? get ataUtc;
  String? get ataLocal;
  double? get blockHours;
  int? get itemSequenceWithinDuty;
  String? get lastDutyItem;
  String? get itemWorkCode;
  dynamic get sectorConnector;
  dynamic get dutyTypeCode;
  String? get ltdLocal;
  String? get ltaLocal;
  String? get ltdUtc;
  String? get ltaUtc;
  List<dynamic>? get specialDutyCode;
  String? get flightRef;
  String? get sectorRef;
  bool? get isFirstDutyItem;
  bool? get isLastDutyItem;

  FlightInterface.fromJson(Map<String, dynamic> json);
  FlightInterface.fromFlight(dynamic flight);
  String? get commanderName;
}

class FlightDutyContainer extends StatelessWidget {
  final DutyInterface duty;
  final bool showDate;
  final Function(DutyInterface)? onTap;

  const FlightDutyContainer({
    super.key,
    required this.duty,
    required this.showDate,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: dateShowFlex,
          child: showDate
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    DateFormat('E\ndd')
                        .format(DateTime.parse(duty.dutyStartLocal!)),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                )
              : const SizedBox(),
        ),
        Expanded(
          flex: containerFlex,
          child: GestureDetector(
            onTap: onTap != null ? () => onTap!(duty) : null,
            child: Card(
              elevation: 4,
              color: Colors.purple[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                padding: const EdgeInsets.all(12),
                height: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${duty.flight.carrierCode} ${duty.flight.flightNumber}',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${duty.flight.aircraftType}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${duty.flight.departurePort}',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text(formatTime(duty.flight.stdLocal),
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                        Icon(Icons.flight_takeoff,
                            color: Theme.of(context).primaryColor),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('${duty.flight.arrivalPort}',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text(formatTime(duty.flight.staLocal),
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Block: ${duty.flight.blockHours?.toStringAsFixed(2)} hrs',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        if (duty.flight.commanderName != null)
                          Expanded(
                            child: Text(
                              '${duty.flight.commanderName}',
                              style: Theme.of(context).textTheme.bodySmall,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.end,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class OffDutyContainer extends StatelessWidget {
  final DutyInterface duty;
  final bool showDate;

  const OffDutyContainer(
      {super.key, required this.duty, required this.showDate});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: dateShowFlex,
          child: showDate
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    DateFormat('E\ndd')
                        .format(DateTime.parse(duty.dutyStartLocal.toString())),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                )
              : const SizedBox(),
        ),
        Expanded(
          flex: containerFlex,
          child: Card(
            elevation: 4,
            color: Colors.green[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${duty.dutyDesc}',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Off Duty',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SimDutyContainer extends StatelessWidget {
  final DutyInterface duty;
  final bool showDate;
  final Function(DutyInterface)? onTap;

  const SimDutyContainer(
      {super.key, required this.duty, required this.showDate, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: dateShowFlex,
          child: showDate
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    DateFormat('E\ndd')
                        .format(DateTime.parse(duty.dutyStartLocal.toString())),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                )
              : const SizedBox(),
        ),
        Expanded(
          flex: containerFlex,
          child: GestureDetector(
            onTap: onTap != null ? () => onTap!(duty) : null,
            child: Card(
              elevation: 4,
              color: Colors.blue[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                padding: const EdgeInsets.all(12),
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Simulator Training',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text('${duty.dutyDesc}',
                        style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 4),
                    Text(
                      'Pattern: ${duty.patternCode}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class OtherDutyContainer extends StatelessWidget {
  final DutyInterface duty;
  final bool showDate;

  const OtherDutyContainer(
      {super.key, required this.duty, required this.showDate});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: dateShowFlex,
          child: showDate
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    DateFormat('E\ndd')
                        .format(DateTime.parse(duty.dutyStartLocal.toString())),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                )
              : const SizedBox(),
        ),
        Expanded(
          flex: containerFlex,
          child: Card(
            elevation: 4,
            color: Colors.orange[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    duty.dutyDesc.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  if (duty.dutyType == "SBY") ...[
                    Text(
                      'Pattern: ${duty.patternCode}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Start: ${formatTime(duty.dutyStartLocal)}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'End: ${formatTime(duty.dutyEndLocal)}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ] else
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Type: ${duty.dutyType}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Pattern: ${duty.patternCode}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

String formatTime(String? timeString) {
  if (timeString == null) return '';
  final dateTime = DateTime.parse(timeString);
  return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}L';
}
