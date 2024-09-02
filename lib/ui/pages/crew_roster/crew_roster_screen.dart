import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
// import 'package:oauthproject/model/my_full_roster/duty_list.dart';
// import 'package:oauthproject/model/public_roster_crew_results/duty_date_time_model.dart';
import 'package:oauthproject/model/public_roster_crew_results/duty_list.dart';
import 'package:oauthproject/model/public_roster_crew_results/flight.dart';
import 'package:oauthproject/ui/pages/crewlist/bloc/flight_crewlist_bloc.dart';
import 'package:oauthproject/ui/widgets/auth_status_icon_widget.dart';
import 'package:oauthproject/ui/widgets/duty_container_widgets.dart';

const dateShowFlex = 2;
const containerFlex = 11;

class CrewRosterScreen extends StatelessWidget {
  final Map<String, List<DutyList>> rosters;

  const CrewRosterScreen({super.key, required this.rosters});

  @override
  Widget build(BuildContext context) {
    final months = rosters.keys.toList();
    print('crewrosterscreen build: ${rosters.values.first.first.key}');
    return BlocListener<FlightCrewlistBloc, FlightCrewlistState>(
        listener: (context, state) {
          print('The Flight Crew List Bloc State: $state');
          if (state is FclLoading) {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return WillPopScope(
                      onWillPop: () async => false,
                      child: const Center(child: CircularProgressIndicator()));
                });
          } else {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
              print('Dialog popped');
            }

            if (state is FclLoaded) {
              context.push('/crewlist-results', extra: state.flightCrewList);
            } else if (state is SimCrewListLoaded) {
              context.push('/sim-crewlist-results', extra: state.simCrewList);
            }
          }
        },
        child: DefaultTabController(
          length: months.length,
          initialIndex: _getCurrentMonthIndex(months),
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.surface,
                actions: [
                  IconButton(
                      icon: const AuthStatusIcon(),
                      onPressed: () {
                        Map<String, List<Map<String, dynamic>>>
                            convertedRosters = rosters.map(
                          (key, value) => MapEntry(
                            key,
                            value.map((dutyList) => dutyList.toMap()).toList(),
                          ),
                        );
                        context.push('/json-display', extra: convertedRosters);
                      })
                ],
                bottom: TabBar(
                    isScrollable: true,
                    tabs: months.map((month) => Tab(text: month)).toList()),
              ),
              backgroundColor: Theme.of(context).colorScheme.surface,
              body: MonthlyRosterTabView(rosters: rosters)),
        ));
  }
}

int _getCurrentMonthIndex(List<String> months) {
  final currentMonth = DateFormat('MMM').format(DateTime.now());
  return months.indexOf(currentMonth);
}

class RosterListColumn extends StatelessWidget {
  const RosterListColumn({
    super.key,
    required this.totalblockHours,
    required this.duties,
  });

  final double totalblockHours;
  final List<DutyList> duties;

  @override
  Widget build(BuildContext context) {
    String? lastShownDate;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Total Block Hours: '),
            Text(totalblockHours.toStringAsFixed(2)),
          ],
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: duties.length,
            itemBuilder: (context, index) {
              final duty = CrewDutyList.fromDutyList(duties[index]);
              // final model = DutyDateTimeModel.fromRoster(duty);
              final currentDate = DateFormat('E\ndd')
                  .format(DateTime.parse(duty.dutyStartLocal.toString()));

              bool showDate;
              if (duty.dutyCode == "TRIP") {
                showDate = duty.flight.itemSequenceWithinDuty == 1;
              } else {
                showDate = currentDate != lastShownDate;
              }

              if (duty.dutyCode == "TRIP") {
                return FlightDutyContainer(
                    duty: duty,
                    showDate: showDate,
                    onTap: (duty) => context.read<FlightCrewlistBloc>().add(
                        RequestFclEvent(
                            dep: duty.flight.departurePort,
                            arr: duty.flight.arrivalPort,
                            dutyCode: '${duty.flight.flightNumber}',
                            dutyStartDate: DateFormat('yyyyMMdd').format(
                                DateTime.parse(
                                    duty.flight.stdLocal.toString())))));
              } else if (duty.dutyCode == "ACY") {
                if (duty.dutyType == "OFF") {
                  return OffDutyContainer(duty: duty, showDate: showDate);
                } else if (duty.dutyType == "SIM") {
                  return SimDutyContainer(
                    duty: duty,
                    showDate: showDate,
                    onTap: (duty) => context.read<FlightCrewlistBloc>().add(
                        RequestSimEvent(
                            dutyCode: '${duty.patternCode}',
                            dutyStartDate: DateFormat('yyyyMMdd').format(
                                DateTime.parse(
                                    duty.dutyStartLocal.toString())))),
                  );
                } else {
                  return OtherDutyContainer(duty: duty, showDate: showDate);
                }
              } else {
                return OtherDutyContainer(duty: duty, showDate: showDate);
              }
            },
          ),
        ),
      ],
    );
  }
}

class MonthlyRosterTabView extends StatelessWidget {
  final Map<String, List<DutyList>> rosters;
  final Map<String, double> totalBlockHours;

  MonthlyRosterTabView({Key? key, required this.rosters})
      : totalBlockHours = rosters.map((month, duties) =>
            MapEntry(month, calculateTotalBlockHours(duties))),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> months = rosters.keys.toList();

    return TabBarView(
      children: months.map((month) {
        return RosterListColumn(
            totalblockHours: totalBlockHours[month]!, duties: rosters[month]!);
      }).toList(),
    );
  }
}

double calculateTotalBlockHours(List<DutyList> duties) {
  return duties
      .where((duty) => duty.flight != null && duty.flight!.blockHours != null)
      .fold(0.0, (sum, duty) => sum + duty.flight!.blockHours!);
}

final Map<String, String> _formattedTimeCache = {};

String formatTime(String? timeString) {
  if (timeString == null) return '';

  if (_formattedTimeCache.containsKey(timeString)) {
    return _formattedTimeCache[timeString]!;
  }

  final dateTime = DateTime.parse(timeString);
  final formattedTime =
      '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}L';

  _formattedTimeCache[timeString] = formattedTime;
  return formattedTime;
}

class CrewDutyList implements DutyInterface {
  @override
  final CrewFlight flight;
  @override
  final String dutyCode;
  @override
  final String dutyStartLocal;
  @override
  final String dutyEndLocal;
  @override
  final String? dutyType;
  @override
  final String? dutyDesc;
  @override
  final String patternCode;
  @override
  final List<String> specialDutyCode;

  CrewDutyList({
    required this.flight,
    required this.dutyCode,
    required this.dutyStartLocal,
    required this.dutyEndLocal,
    this.dutyType,
    this.dutyDesc,
    required this.patternCode,
    required this.specialDutyCode,
  });

  factory CrewDutyList.fromDutyList(DutyList dutyList) {
    return CrewDutyList(
      flight: CrewFlight.fromFlight(dutyList.flight ?? Flight()),
      dutyCode: dutyList.dutyCode.toString(),
      dutyStartLocal: dutyList.dutyStartLocal.toString(),
      dutyEndLocal: dutyList.dutyEndLocal.toString(),
      dutyType: dutyList.dutyType,
      dutyDesc: dutyList.dutyDesc,
      patternCode: dutyList.patternCode.toString(),
      specialDutyCode: (dutyList.specialDutyCode ?? []).cast<String>(),
    );
  }
}

class CrewFlight implements FlightInterface {
  @override
  final String carrierCode;
  @override
  final int flightNumber;
  @override
  final String scheduledFlightDate;
  @override
  final String departurePort;
  @override
  final String arrivalPort;
  @override
  final int sectorSequenceNumber;
  @override
  final String cancelled;
  @override
  final String aircraftType;
  @override
  final String stdUtc;
  @override
  final String stdLocal;
  @override
  final String? etdUtc;
  @override
  final String? etdLocal;
  @override
  final String? atdUtc;
  @override
  final String? atdLocal;
  @override
  final String staUtc;
  @override
  final String staLocal;
  @override
  final String? etaUtc;
  @override
  final String? etaLocal;
  @override
  final String? ataUtc;
  @override
  final String? ataLocal;
  @override
  final double blockHours;
  @override
  final int itemSequenceWithinDuty;
  @override
  final String lastDutyItem;
  @override
  final String itemWorkCode;
  @override
  final String? sectorConnector;
  @override
  final String? dutyTypeCode;
  @override
  final String ltdLocal;
  @override
  final String ltaLocal;
  @override
  final String ltdUtc;
  @override
  final String ltaUtc;
  @override
  final List<String> specialDutyCode;
  @override
  final String flightRef;
  @override
  final String sectorRef;
  @override
  final bool isFirstDutyItem;
  @override
  final bool isLastDutyItem;

  CrewFlight({
    required this.carrierCode,
    required this.flightNumber,
    required this.scheduledFlightDate,
    required this.departurePort,
    required this.arrivalPort,
    required this.sectorSequenceNumber,
    required this.cancelled,
    required this.aircraftType,
    required this.stdUtc,
    required this.stdLocal,
    this.etdUtc,
    this.etdLocal,
    this.atdUtc,
    this.atdLocal,
    required this.staUtc,
    required this.staLocal,
    this.etaUtc,
    this.etaLocal,
    this.ataUtc,
    this.ataLocal,
    required this.blockHours,
    required this.itemSequenceWithinDuty,
    required this.lastDutyItem,
    required this.itemWorkCode,
    this.sectorConnector,
    this.dutyTypeCode,
    required this.ltdLocal,
    required this.ltaLocal,
    required this.ltdUtc,
    required this.ltaUtc,
    required this.specialDutyCode,
    required this.flightRef,
    required this.sectorRef,
    required this.isFirstDutyItem,
    required this.isLastDutyItem,
  });

  factory CrewFlight.fromFlight(Flight flight) {
    return CrewFlight(
      carrierCode: flight.carrierCode ?? "",
      flightNumber: flight.flightNumber ?? 0,
      scheduledFlightDate: flight.scheduledFlightDate ?? "",
      departurePort: flight.departurePort ?? "",
      arrivalPort: flight.arrivalPort ?? "",
      sectorSequenceNumber: flight.sectorSequenceNumber ?? 0,
      cancelled: flight.cancelled ?? "",
      aircraftType: flight.aircraftType ?? "",
      stdUtc: flight.stdUtc ?? "",
      stdLocal: flight.stdLocal ?? "",
      etdUtc: flight.etdUtc ?? "",
      etdLocal: flight.etdLocal ?? "",
      atdUtc: flight.atdUtc ?? "",
      atdLocal: flight.atdLocal ?? "",
      staUtc: flight.staUtc ?? "",
      staLocal: flight.staLocal ?? "",
      etaUtc: flight.etaUtc ?? "",
      etaLocal: flight.etaLocal ?? "",
      ataUtc: flight.ataUtc ?? "",
      ataLocal: flight.ataLocal ?? "",
      blockHours: flight.blockHours ?? 0.0,
      itemSequenceWithinDuty: flight.itemSequenceWithinDuty ?? 0,
      lastDutyItem: flight.lastDutyItem ?? "",
      itemWorkCode: flight.itemWorkCode ?? "",
      sectorConnector: flight.sectorConnector ?? "",
      dutyTypeCode: flight.dutyTypeCode ?? "",
      ltdLocal: flight.ltaLocal ?? "",
      ltaLocal: flight.ltaLocal ?? "",
      ltdUtc: flight.ltdUtc ?? "",
      ltaUtc: flight.ltaUtc ?? "",
      specialDutyCode: List<String>.from(flight.specialDutyCode ?? []),
      flightRef: flight.flightRef ?? "",
      sectorRef: flight.sectorRef ?? "",
      isFirstDutyItem: flight.isFirstDutyItem ?? false,
      isLastDutyItem: flight.isLastDutyItem ?? false,
    );
  }

  @override
  String? get commanderName => null;
}


// class FlightDutyContainer extends StatelessWidget {
//   final DutyList duty;
//   final bool showDate;

//   const FlightDutyContainer({
//     super.key,
//     required this.duty,
//     required this.showDate,
//   });

//   @override
//   Widget build(BuildContext context) {
//     DutyDateTimeModel model = DutyDateTimeModel.fromRoster(duty);

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Expanded(
//           flex: dateShowFlex,
//           child: showDate
//               ? Container(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//                   decoration: BoxDecoration(
//                     color: Theme.of(context).primaryColor.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Text(
//                     model.showString ?? "",
//                     textAlign: TextAlign.center,
//                     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                           fontWeight: FontWeight.bold,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                   ),
//                 )
//               : const SizedBox(),
//         ),
//         Expanded(
//           flex: containerFlex,
//           child: GestureDetector(
//             onTap: () => context.read<FlightCrewlistBloc>().add(RequestFclEvent(
//                 dutyCode: '${duty.flight?.flightNumber}',
//                 dutyStartDate: '${model.flightDate}')),
//             child: Card(
//               elevation: 4,
//               color: Colors.purple[50],
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Container(
//                 padding: const EdgeInsets.all(12),
//                 height: 130,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '${duty.flight?.carrierCode} ${duty.flight?.flightNumber}',
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleLarge
//                               ?.copyWith(fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           '${duty.flight?.aircraftType}',
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('${duty.flight?.departurePort}',
//                                 style: Theme.of(context).textTheme.titleMedium),
//                             Text(formatTime(duty.flight?.stdLocal),
//                                 style: Theme.of(context).textTheme.bodySmall),
//                           ],
//                         ),
//                         Icon(Icons.flight_takeoff,
//                             color: Theme.of(context).primaryColor),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Text('${duty.flight?.arrivalPort}',
//                                 style: Theme.of(context).textTheme.titleMedium),
//                             Text(formatTime(duty.flight?.staLocal),
//                                 style: Theme.of(context).textTheme.bodySmall),
//                           ],
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Block: ${duty.flight?.blockHours?.toStringAsFixed(2)} hrs',
//                           style: Theme.of(context).textTheme.bodyMedium,
//                         ),
//                         if (duty.specialDutyCode != null &&
//                             duty.specialDutyCode!.isNotEmpty)
//                           Expanded(
//                             child: Text(
//                               'Special: ${duty.specialDutyCode!.join(", ")}',
//                               style: Theme.of(context).textTheme.bodySmall,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.end,
//                             ),
//                           ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class OffDutyContainer extends StatelessWidget {
//   final DutyList duty;
//   final bool showDate;

//   const OffDutyContainer(
//       {super.key, required this.duty, required this.showDate});

//   @override
//   Widget build(BuildContext context) {
//     DutyDateTimeModel model = DutyDateTimeModel.fromRoster(duty);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Expanded(
//           flex: dateShowFlex,
//           child: showDate
//               ? Container(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//                   decoration: BoxDecoration(
//                     color: Theme.of(context).primaryColor.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Text(
//                     model.showString ?? "",
//                     textAlign: TextAlign.center,
//                     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                           fontWeight: FontWeight.bold,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                   ),
//                 )
//               : const SizedBox(),
//         ),
//         Expanded(
//           flex: containerFlex,
//           child: Card(
//             elevation: 4,
//             color: Colors.green[50],
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Container(
//               padding: const EdgeInsets.all(12),
//               height: 100,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     '${duty.dutyDesc}',
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleMedium
//                         ?.copyWith(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     'Off Duty',
//                     style: Theme.of(context).textTheme.bodySmall,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class SimDutyContainer extends StatelessWidget {
//   final DutyList duty;
//   final bool showDate;

//   const SimDutyContainer(
//       {super.key, required this.duty, required this.showDate});

//   @override
//   Widget build(BuildContext context) {
//     DutyDateTimeModel model = DutyDateTimeModel.fromRoster(duty);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Expanded(
//           flex: dateShowFlex,
//           child: showDate
//               ? Container(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//                   decoration: BoxDecoration(
//                     color: Theme.of(context).primaryColor.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Text(
//                     model.showString ?? "",
//                     textAlign: TextAlign.center,
//                     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                           fontWeight: FontWeight.bold,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                   ),
//                 )
//               : const SizedBox(),
//         ),
//         Expanded(
//           flex: containerFlex,
//           child: GestureDetector(
//             onTap: () => context.read<FlightCrewlistBloc>().add(RequestSimEvent(
//                 dutyCode: '${duty.patternCode}',
//                 dutyStartDate: '${model.dutyDate}')),
//             child: Card(
//               elevation: 4,
//               color: Colors.blue[50],
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Container(
//                 padding: const EdgeInsets.all(12),
//                 height: 100,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Simulator Training',
//                       style: Theme.of(context)
//                           .textTheme
//                           .titleMedium
//                           ?.copyWith(fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 4),
//                     Text('${duty.dutyDesc}',
//                         style: Theme.of(context).textTheme.bodyMedium),
//                     const SizedBox(height: 4),
//                     Text(
//                       'Pattern: ${duty.patternCode}',
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class OtherDutyContainer extends StatelessWidget {
//   final DutyList duty;
//   final bool showDate;

//   const OtherDutyContainer(
//       {super.key, required this.duty, required this.showDate});

//   @override
//   Widget build(BuildContext context) {
//     DutyDateTimeModel model = DutyDateTimeModel.fromRoster(duty);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Expanded(
//           flex: dateShowFlex,
//           child: showDate
//               ? Container(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//                   decoration: BoxDecoration(
//                     color: Theme.of(context).primaryColor.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Text(
//                     model.showString ?? "",
//                     textAlign: TextAlign.center,
//                     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                           fontWeight: FontWeight.bold,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                   ),
//                 )
//               : const SizedBox(),
//         ),
//         Expanded(
//           flex: containerFlex,
//           child: Card(
//             elevation: 4,
//             color: Colors.orange[50],
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Container(
//               padding: const EdgeInsets.all(12),
//               height: 100,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     duty.dutyDesc,
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleMedium
//                         ?.copyWith(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 4),
//                   if (duty.dutyType == "SBY") ...[
//                     Text(
//                       'Pattern: ${duty.patternCode}',
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             'Start: ${formatTime(duty.patternStartLocal)}',
//                             style: Theme.of(context).textTheme.bodySmall,
//                           ),
//                         ),
//                         Expanded(
//                           child: Text(
//                             'End: ${formatTime(duty.patternEndLocal)}',
//                             style: Theme.of(context).textTheme.bodySmall,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ] else
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             'Type: ${duty.dutyType}',
//                             style: Theme.of(context).textTheme.bodySmall,
//                           ),
//                         ),
//                         Expanded(
//                           child: Text(
//                             'Pattern: ${duty.patternCode}',
//                             style: Theme.of(context).textTheme.bodySmall,
//                           ),
//                         ),
//                       ],
//                     ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }