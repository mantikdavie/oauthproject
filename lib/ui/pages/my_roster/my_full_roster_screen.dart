import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:oauthproject/bloc/auth/auth_status_bloc.dart';
import 'package:oauthproject/model/my_full_roster/crew.dart';
import 'package:oauthproject/model/my_full_roster/flight.dart';
import 'package:oauthproject/model/my_full_roster/my_full_roster.dart';
import 'package:oauthproject/model/my_full_roster/duty_list.dart';
import 'package:oauthproject/ui/widgets/auth_status_icon_widget.dart';
import 'package:oauthproject/ui/widgets/duty_container_widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oauthproject/ui/pages/my_roster/bloc/my_full_roster_bloc.dart';

class MyFullRosterScreen extends StatelessWidget {
  const MyFullRosterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MyFullRosterBloc>(
      create: (context) =>
          MyFullRosterBloc()..add(FetchMyFullRosterFromLocal()),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: const Text('Self Roster'),
          actions: const [MyFullRosterRefreshButton(), RawJsonIcon()],
        ),
        body: BlocConsumer<MyFullRosterBloc, MyFullRosterState>(
          listener: (context, state) {
            if (state is MyFullRosterRemoteFetchFailedLoadingLocal) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text(
                        'Unable to fetch from remote. Loading from cache...')),
              );
            }
            if (state is MyFullRosterNoLocalCache) {
              context
                  .read<MyFullRosterBloc>()
                  .add(FetchMyFullRosterFromRemote());
            }
          },
          builder: (context, state) {
            if (state is MyFullRosterLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is MyFullRosterLoaded) {
              final rosters = _groupDutiesByMonth(state.myFullRoster);
              final months = rosters.keys.toList();
              return DefaultTabController(
                length: months.length,
                initialIndex: _getCurrentMonthIndex(months),
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      tabs: months.map((month) => Tab(text: month)).toList(),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: months.map((month) {
                          return MonthlyRosterTabView(duties: rosters[month]!);
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              );
            } else if (state is MyFullRosterError) {
              return Center(child: Text('Error: ${state.errorMessage}'));
            } else {
              return const Center(child: Text('Something went wrong'));
            }
          },
        ),
      ),
    );
  }

  Map<String, List<DutyList>> _groupDutiesByMonth(MyFullRoster myFullRoster) {
    Map<String, List<DutyList>> groupedDuties = {};
    for (var duty in myFullRoster.dutyList ?? []) {
      String month =
          DateFormat('MMMM yyyy').format(DateTime.parse(duty.dutyStartLocal!));
      groupedDuties.putIfAbsent(month, () => []).add(duty);
    }
    return groupedDuties;
  }
}

class RawJsonIcon extends StatelessWidget {
  const RawJsonIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyFullRosterBloc, MyFullRosterState>(
      builder: (context, state) {
        return IconButton(
          icon: const AuthStatusIcon(),
          onPressed: () {
            if (state is MyFullRosterLoaded) {
              context.push('/json-display', extra: state.myFullRoster.toMap());
            }
          },
        );
      },
    );
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
        final duty = SelfDutyList.fromDutyList(duties[index]);
        return _buildDutyContainer(context, duty);
      },
    );
  }

  Widget _buildDutyContainer(BuildContext context, SelfDutyList duty) {
    String? lastShownDate;
    final currentDate = DateFormat('E\ndd')
        .format(DateTime.parse(duty.dutyStartLocal.toString()));
    bool showDate;
    if (duty.dutyCode == "TRIP") {
      showDate = duty.flight.itemSequenceWithinDuty == 1;
    } else {
      showDate = currentDate != lastShownDate;
    }

    if (duty.dutyCode == "TRIP") {
      return FlightDutyContainer(duty: duty, showDate: showDate);
    } else if (duty.dutyCode == "ACY") {
      if (duty.dutyType == "OFF" || duty.dutyType == "LVE") {
        return OffDutyContainer(duty: duty, showDate: showDate);
      } else if (duty.dutyType == "SIM") {
        return SimDutyContainer(duty: duty, showDate: showDate);
      }
    }
    return OtherDutyContainer(duty: duty, showDate: true);
  }
}

class MyFullRosterRefreshButton extends StatelessWidget {
  const MyFullRosterRefreshButton({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = context.read<AuthStatusBloc>().state;
    return IconButton(
      onPressed: authState is AuthStatusAuthenticated
          ? () {
              context
                  .read<MyFullRosterBloc>()
                  .add(FetchMyFullRosterFromRemote());
            }
          : null, // Disable if not authenticated
      icon: const Icon(Icons.refresh),
    );
  }
}

int _getCurrentMonthIndex(List<String> months) {
  final currentMonth = DateFormat('MMMM yyyy').format(DateTime.now());
  return months.indexOf(currentMonth);
}

class SelfDutyList implements DutyInterface {
  @override
  final SelfFlight flight;
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
      flight: SelfFlight.fromFlight(dutyList.flight ?? Flight()),
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

class SelfFlight implements FlightInterface {
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

  factory SelfFlight.fromFlight(Flight flight) {
    return SelfFlight(
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
      crews: flight.crews ?? [],
      actBlkMins: flight.actBlkMins ?? 0,
      pubBlkMins: flight.pubBlkMins ?? 0,
      pubStartTmUtc: flight.pubStartTmUtc ?? "",
      pubEndTmUtc: flight.pubEndTmUtc ?? "",
      pubStartTmLoc: flight.pubStartTmLoc ?? "",
      pubEndTmLoc: flight.pubEndTmLoc ?? "",
      actStartTmUtc: flight.actStartTmUtc ?? "",
      actEndTmUtc: flight.actEndTmUtc ?? "",
      actStartTmLoc: flight.actStartTmLoc ?? "",
      actEndTmLoc: flight.actEndTmLoc ?? "",
    );
  }

  @override
  String? get commanderName {
    return crews
        .firstWhere((crew) => crew.commander == 'Y', orElse: () => Crew())
        .crewName;
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
