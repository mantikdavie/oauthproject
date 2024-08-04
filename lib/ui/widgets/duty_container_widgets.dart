import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oauthproject/model/public_roster_crew_results/duty_list.dart';

const dateShowFlex = 2;
const containerFlex = 11;

class FlightDutyContainer extends StatelessWidget {
  final DutyList duty;
  final bool showDate;
  final Function(DutyList)? onTap;

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
                    DateFormat('MMM d')
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
                          '${duty.flight?.carrierCode} ${duty.flight?.flightNumber}',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${duty.flight?.aircraftType}',
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
                            Text('${duty.flight?.departurePort}',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text(formatTime(duty.flight?.stdLocal),
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                        Icon(Icons.flight_takeoff,
                            color: Theme.of(context).primaryColor),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('${duty.flight?.arrivalPort}',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text(formatTime(duty.flight?.staLocal),
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
                          'Block: ${duty.flight?.blockHours?.toStringAsFixed(2)} hrs',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        if (duty.specialDutyCode != null &&
                            duty.specialDutyCode!.isNotEmpty)
                          Expanded(
                            child: Text(
                              'Special: ${duty.specialDutyCode!.join(", ")}',
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
  final DutyList duty;
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
  final DutyList duty;
  final bool showDate;
  final Function(DutyList)? onTap;

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
  final DutyList duty;
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
                            'Start: ${formatTime(duty.patternStartLocal)}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'End: ${formatTime(duty.patternEndLocal)}',
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
