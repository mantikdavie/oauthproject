import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oauthproject/model/my_full_roster/credit_info.dart';
import 'package:oauthproject/model/my_full_roster/crew.dart';
import 'package:oauthproject/model/my_full_roster/flight.dart';
import 'package:oauthproject/model/my_full_roster/my_full_roster.dart';
import 'package:oauthproject/model/my_full_roster/duty_list.dart';
import 'package:oauthproject/model/public_roster_crew_results/credit_info.dart';
import 'package:oauthproject/ui/widgets/duty_container_widgets.dart';

class MyFullRosterScreen extends StatelessWidget {
  final MyFullRoster myFullRoster;

  const MyFullRosterScreen({super.key, required this.myFullRoster});

  @override
  Widget build(BuildContext context) {
    final rosters = _groupDutiesByMonth();
    final months = rosters.keys.toList();

    return DefaultTabController(
      length: months.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Self Roster'),
          bottom: TabBar(
            isScrollable: true,
            tabs: months.map((month) => Tab(text: month)).toList(),
          ),
        ),
        body: TabBarView(
          children: months.map((month) {
            return MonthlyRosterTabView(duties: rosters[month]!);
          }).toList(),
        ),
      ),
    );
  }

  Map<String, List<DutyList>> _groupDutiesByMonth() {
    Map<String, List<DutyList>> groupedDuties = {};
    for (var duty in myFullRoster.dutyList ?? []) {
      String month =
          DateFormat('MMMM yyyy').format(DateTime.parse(duty.dutyStartLocal!));
      groupedDuties.putIfAbsent(month, () => []).add(duty);
    }
    return groupedDuties;
  }
}

class MonthlyRosterTabView extends StatelessWidget {
  final List<DutyList> duties;

  const MonthlyRosterTabView({Key? key, required this.duties})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: duties.length,
      itemBuilder: (context, index) {
        final duty = duties[index] as SelfDutyList;
        return _buildDutyContainer(context, duty);
      },
    );
  }

  Widget _buildDutyContainer(BuildContext context, SelfDutyList duty) {
    if (duty.dutyCode == "TRIP") {
      return FlightDutyContainer(duty: duty, showDate: true);
    } else if (duty.dutyCode == "ACY") {
      if (duty.dutyType == "OFF") {
        return OffDutyContainer(duty: duty, showDate: true);
      } else if (duty.dutyType == "SIM") {
        return SimDutyContainer(duty: duty, showDate: true);
      }
    }
    return OtherDutyContainer(duty: duty, showDate: true);
  }
}

class SelfDutyList implements DutyInterface {
  final FlightInterface flight;
  final String dutyCode;
  final String dutyStartLocal;
  final String dutyEndLocal;
  final String? dutyType;
  final String? dutyDesc;
  final String patternCode;
  final List<String> specialDutyCode;

  SelfDutyList({
    required this.flight,
    required this.dutyCode,
    required this.dutyStartLocal,
    required this.dutyEndLocal,
    this.dutyType,
    this.dutyDesc,
    required this.patternCode,
    required this.specialDutyCode,
  });

  factory SelfDutyList.fromDutyList(DutyList dutyList) {
    return SelfDutyList(
      flight: FlightInterface.fromJson(dutyList.flight),
      dutyCode: dutyList.dutyCode.toString(),
      dutyStartLocal: dutyList.dutyStartLocal.toString(),
      dutyEndLocal: dutyList.dutyEndLocal.toString(),
      dutyType: dutyList.dutyType,
      dutyDesc: dutyList.dutyDesc,
      patternCode: dutyList.patternCode.toString(),
      specialDutyCode: dutyList.specialDutyCode,
    );
  }

  factory SelfDutyList.fromJson(Map<String, dynamic> json) {
    return SelfDutyList(
      flight: SelfFlight.fromJson(json['flight']),
      dutyCode: json['dutyCode'],
      dutyStartLocal: json['dutyStartLocal'],
      dutyEndLocal: json['dutyEndLocal'],
      dutyType: json['dutyType'],
      dutyDesc: json['dutyDesc'],
      patternCode: json['patternCode'],
      specialDutyCode: List<String>.from(json['specialDutyCode']),
    );
  }
}

class SelfFlight implements FlightInterface {
  final String carrierCode;
  final int flightNumber;
  final String scheduledFlightDate;
  final String departurePort;
  final String arrivalPort;
  final int sectorSequenceNumber;
  final String cancelled;
  final String aircraftType;
  final String stdUtc;
  final String stdLocal;
  final String? etdUtc;
  final String? etdLocal;
  final String? atdUtc;
  final String? atdLocal;
  final String staUtc;
  final String staLocal;
  final String? etaUtc;
  final String? etaLocal;
  final String? ataUtc;
  final String? ataLocal;
  final double blockHours;
  final int itemSequenceWithinDuty;
  final String lastDutyItem;
  final String itemWorkCode;
  final String? sectorConnector;
  final String? dutyTypeCode;
  final String ltdLocal;
  final String ltaLocal;
  final String ltdUtc;
  final String ltaUtc;
  final List<String> specialDutyCode;
  final String flightRef;
  final String sectorRef;
  final bool isFirstDutyItem;
  final bool isLastDutyItem;
  final List<Crew> crews;
  final int actBlkMins;
  final int pubBlkMins;
  final String pubStartTmUtc;
  final String pubEndTmUtc;
  final String pubStartTmLoc;
  final String pubEndTmLoc;
  final String actStartTmUtc;
  final String actEndTmUtc;
  final String actStartTmLoc;
  final String actEndTmLoc;

  SelfFlight({
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
    required this.crews,
    required this.actBlkMins,
    required this.pubBlkMins,
    required this.pubStartTmUtc,
    required this.pubEndTmUtc,
    required this.pubStartTmLoc,
    required this.pubEndTmLoc,
    required this.actStartTmUtc,
    required this.actEndTmUtc,
    required this.actStartTmLoc,
    required this.actEndTmLoc,
  });

  factory SelfFlight.fromJson(Map<String, dynamic> json) {
    return SelfFlight(
      carrierCode: json['carrierCode'],
      flightNumber: json['flightNumber'],
      scheduledFlightDate: json['scheduledFlightDate'],
      departurePort: json['departurePort'],
      arrivalPort: json['arrivalPort'],
      sectorSequenceNumber: json['sectorSequenceNumber'],
      cancelled: json['cancelled'],
      aircraftType: json['aircraftType'],
      stdUtc: json['stdUtc'],
      stdLocal: json['stdLocal'],
      etdUtc: json['etdUtc'],
      etdLocal: json['etdLocal'],
      atdUtc: json['atdUtc'],
      atdLocal: json['atdLocal'],
      staUtc: json['staUtc'],
      staLocal: json['staLocal'],
      etaUtc: json['etaUtc'],
      etaLocal: json['etaLocal'],
      ataUtc: json['ataUtc'],
      ataLocal: json['ataLocal'],
      blockHours: json['blockHours'],
      itemSequenceWithinDuty: json['itemSequenceWithinDuty'],
      lastDutyItem: json['lastDutyItem'],
      itemWorkCode: json['itemWorkCode'],
      sectorConnector: json['sectorConnector'],
      dutyTypeCode: json['dutyTypeCode'],
      ltdLocal: json['ltdLocal'],
      ltaLocal: json['ltaLocal'],
      ltdUtc: json['ltdUtc'],
      ltaUtc: json['ltaUtc'],
      specialDutyCode: List<String>.from(json['specialDutyCode']),
      flightRef: json['flightRef'],
      sectorRef: json['sectorRef'],
      isFirstDutyItem: json['_isFirstDutyItem'],
      isLastDutyItem: json['_isLastDutyItem'],
      crews: (json['crews'] as List).map((crew) => Crew.fromMap(crew)).toList(),
      actBlkMins: json['actBlkMins'],
      pubBlkMins: json['pubBlkMins'],
      pubStartTmUtc: json['pubStartTmUtc'],
      pubEndTmUtc: json['pubEndTmUtc'],
      pubStartTmLoc: json['pubStartTmLoc'],
      pubEndTmLoc: json['pubEndTmLoc'],
      actStartTmUtc: json['actStartTmUtc'],
      actEndTmUtc: json['actEndTmUtc'],
      actStartTmLoc: json['actStartTmLoc'],
      actEndTmLoc: json['actEndTmLoc'],
    );
  }
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
//                     DateFormat('MMM d')
//                         .format(DateTime.parse(duty.dutyStartLocal!)),
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
//             color: Colors.purple[50],
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Container(
//               padding: const EdgeInsets.all(12),
//               height: 130,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Flight Duty',
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleLarge
//                         ?.copyWith(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 8),
//                   Text('Start: ${formatTime(duty.dutyStartLocal)}'),
//                   Text('End: ${formatTime(duty.dutyEndLocal)}'),
//                   // Text('Duration: ${d ?? "N/A"}'),
//                 ],
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
//                     DateFormat('MMM d')
//                         .format(DateTime.parse(duty.dutyStartLocal!)),
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
//                     'Off Duty',
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleMedium
//                         ?.copyWith(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(duty.dutyDesc ?? ""),
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
//                     DateFormat('MMM d')
//                         .format(DateTime.parse(duty.dutyStartLocal!)),
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
//             color: Colors.blue[50],
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Container(
//               padding: const EdgeInsets.all(12),
//               height: 100,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Simulator Training',
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleMedium
//                         ?.copyWith(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(duty.dutyDesc ?? ""),
//                   const SizedBox(height: 4),
//                   Text(
//                     'Pattern: ${duty.patternCode ?? "N/A"}',
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

// class OtherDutyContainer extends StatelessWidget {
//   final DutyList duty;
//   final bool showDate;

//   const OtherDutyContainer(
//       {super.key, required this.duty, required this.showDate});

//   @override
//   Widget build(BuildContext context) {
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
//                     DateFormat('MMM d')
//                         .format(DateTime.parse(duty.dutyStartLocal!)),
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
//                     duty.dutyDesc ?? "",
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleMedium
//                         ?.copyWith(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 4),
//                   Text('Type: ${duty.dutyType ?? "N/A"}'),
//                   Text('Pattern: ${duty.patternCode ?? "N/A"}'),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

String formatTime(String? timeString) {
  if (timeString == null) return '';
  final dateTime = DateTime.parse(timeString);
  return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}L';
}

const dateShowFlex = 2;
const containerFlex = 11;
