import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oauthproject/model/public_roster_crew_results/duty_date_time_model.dart';
import 'package:oauthproject/model/public_roster_crew_results/duty_list.dart';
import 'package:oauthproject/model/public_roster_crew_results/public_roster_crew_results.dart';
import 'package:oauthproject/ui/pages/crew_roster/bloc/crew_roster_bloc.dart';
import 'package:oauthproject/ui/pages/crewlist/bloc/flight_crewlist_bloc.dart';
import 'package:oauthproject/ui/widgets/auth_status_icon_widget.dart';

const dateShowFlex = 1;
const containerFlex = 7;

class CrewRosterScreen extends StatefulWidget {
  final Map<String, List<DutyList>> rosters;

  const CrewRosterScreen({super.key, required this.rosters});

  @override
  State<CrewRosterScreen> createState() => _CrewRosterScreenState();
}

class _CrewRosterScreenState extends State<CrewRosterScreen> {
  late List<DutyList> duties;
  late List<String> months;
  double totalblockHours = 0.0;

  @override
  void initState() {
    super.initState();
    months = widget.rosters.keys.toList();
    duties = widget.rosters[months.first]!;
    // totalblockHours = calculateTotalBlockHours(duties);
  }

  @override
  Widget build(BuildContext context) {
    print('crewrosterscreen build');
    return BlocListener<FlightCrewlistBloc, FlightCrewlistState>(
        listener: (context, state) {
          if (state is FclLoading) {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return WillPopScope(
                      onWillPop: () async => true,
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
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.background,
                actions: const [AuthStatusIcon()],
                bottom: TabBar(
                    isScrollable: true,
                    tabs: months.map((month) => Tab(text: month)).toList()),
              ),
              backgroundColor: Theme.of(context).colorScheme.background,
              body: MonthlyRosterTabView(rosters: widget.rosters)),
        ));
  }
}

class FlightDutyContainer extends StatelessWidget {
  final DutyList duty;

  const FlightDutyContainer({
    super.key,
    required this.duty,
  });

  @override
  Widget build(BuildContext context) {
    DutyDateTimeModel model = DutyDateTimeModel.fromRoster(duty);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            flex: dateShowFlex,
            child: Text(model.showString ?? "", textAlign: TextAlign.center)),
        Expanded(
          flex: containerFlex,
          child: GestureDetector(
            onTap: () => context.read<FlightCrewlistBloc>().add(RequestFclEvent(
                dutyCode: '${duty.flight?.flightNumber}',
                dutyStartDate: '${model.flightDate}')),
            child: Card(
              child: Container(
                margin: const EdgeInsets.all(2),
                // decoration: BoxDecoration(
                //     border: Border.all(color: Colors.black45),
                //     borderRadius: const BorderRadius.all(Radius.circular(15))),
                padding: const EdgeInsets.all(10),
                height: 100,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text(
                              '${duty.flight?.carrierCode} ${duty.flight?.flightNumber}')),
                      Expanded(
                          flex: 1,
                          child: Text('${duty.flight?.departurePort}')),
                      Expanded(
                          flex: 1, child: Text('${duty.flight?.arrivalPort}')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          flex: 2, child: Text('${duty.flight?.aircraftType}')),
                      Expanded(
                          flex: 1,
                          child: Text('${model.dutyStartLocalString}L')),
                      Expanded(
                          flex: 1, child: Text('${model.dutyEndLocalString}L')),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text(duty.flight!.specialDutyCode!.isNotEmpty
                              ? duty.flight!.specialDutyCode?.first
                              : '')),
                      Expanded(
                          flex: 1,
                          child: Text(
                              '${duty.flight!.blockHours?.toStringAsFixed(2)}Hours')),
                    ],
                  ),
                ]),
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

  const OffDutyContainer({super.key, required this.duty});

  @override
  Widget build(BuildContext context) {
    DutyDateTimeModel model = DutyDateTimeModel.fromRoster(duty);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            flex: dateShowFlex,
            child: Text(model.showString ?? "", textAlign: TextAlign.center)),
        Expanded(
          flex: containerFlex,
          child: Card(
            child: Container(
                margin: const EdgeInsets.all(2),
                // decoration: BoxDecoration(
                //     border: Border.all(color: Colors.black45),
                //     borderRadius: const BorderRadius.all(Radius.circular(15))),
                padding: const EdgeInsets.all(10),
                height: 60,
                child: Text('${duty.dutyDesc}')),
          ),
        ),
      ],
    );
  }
}

class SimDutyContainer extends StatelessWidget {
  final DutyList duty;

  const SimDutyContainer({
    super.key,
    required this.duty,
  });

  @override
  Widget build(BuildContext context) {
    DutyDateTimeModel model = DutyDateTimeModel.fromRoster(duty);
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Expanded(
          flex: dateShowFlex,
          child: Text(model.showString ?? "", textAlign: TextAlign.center)),
      Expanded(
          flex: containerFlex,
          child: GestureDetector(
            onTap: () => context.read<FlightCrewlistBloc>().add(RequestSimEvent(
                dutyCode: '${duty.patternCode}',
                dutyStartDate: '${model.dutyDate}')),
            child: Card(
              child: Container(
                  margin: const EdgeInsets.all(2),
                  // decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.black45),
                  //     borderRadius: const BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(10),
                  height: 60,
                  child: Text('${duty.dutyDesc}')),
            ),
          ))
    ]);
  }
}

class OtherDutyContainer extends StatelessWidget {
  final DutyList duty;

  const OtherDutyContainer({
    super.key,
    required this.duty,
  });

  @override
  Widget build(BuildContext context) {
    DutyDateTimeModel model = DutyDateTimeModel.fromRoster(duty);
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Expanded(
          flex: dateShowFlex,
          child: Text(model.showString ?? "", textAlign: TextAlign.center)),
      Expanded(
          flex: containerFlex,
          child: Card(
            child: Container(
              margin: const EdgeInsets.all(2),
              // decoration: BoxDecoration(
              //     border: Border.all(color: Colors.black45),
              //     borderRadius: const BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(10),
              height: 60,
              child: Text(duty.dutyDesc),
            ),
          ))
    ]);
  }
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
              final duty = duties[index];

              if (duty.dutyCode == "TRIP") {
                return FlightDutyContainer(duty: duty);
              } else if (duty.dutyCode == "ACY") {
                if (duty.dutyType == "OFF") {
                  return OffDutyContainer(duty: duty);
                } else if (duty.dutyType == "SIM") {
                  return SimDutyContainer(duty: duty);
                } else {
                  return OtherDutyContainer(duty: duty);
                }
              } else {
                return OtherDutyContainer(duty: duty);
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

  const MonthlyRosterTabView({super.key, required this.rosters});

  @override
  Widget build(BuildContext context) {
    List<String> months = rosters.keys.toList();

    return TabBarView(
      children: months.map((month) {
        final hours = calculateTotalBlockHours(rosters[month] ?? []);
        return RosterListColumn(
            totalblockHours: hours, duties: rosters[month] ?? []);
      }).toList(),
    );
  }
}

double calculateTotalBlockHours(List<DutyList> duties) {
  List<double> blockHours = [];

  for (var duty in duties) {
    if (duty.flight != null) {
      blockHours.add(duty.flight!.blockHours!.toDouble());
    }
  }

  // debugPrint(blockHours.toString());

  final double totalBlockHours;
  if (blockHours.isNotEmpty) {
    totalBlockHours = blockHours.reduce((value, element) => value + element);
  } else {
    totalBlockHours = 0;
  }
  return totalBlockHours;
}
