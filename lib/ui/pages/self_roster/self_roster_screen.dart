import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oauthproject/model/my_full_roster/my_full_roster.dart';
import 'package:oauthproject/model/my_full_roster/duty_list.dart';

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
        final duty = duties[index];
        return _buildDutyContainer(context, duty);
      },
    );
  }

  Widget _buildDutyContainer(BuildContext context, DutyList duty) {
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

class FlightDutyContainer extends StatelessWidget {
  final DutyList duty;
  final bool showDate;

  const FlightDutyContainer({
    super.key,
    required this.duty,
    required this.showDate,
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
                  Text(
                    'Flight Duty',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('Start: ${formatTime(duty.dutyStartLocal)}'),
                  Text('End: ${formatTime(duty.dutyEndLocal)}'),
                  // Text('Duration: ${d ?? "N/A"}'),
                ],
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
                    'Off Duty',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(duty.dutyDesc ?? ""),
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

  const SimDutyContainer(
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
                  Text(duty.dutyDesc ?? ""),
                  const SizedBox(height: 4),
                  Text(
                    'Pattern: ${duty.patternCode ?? "N/A"}',
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
                    duty.dutyDesc ?? "",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text('Type: ${duty.dutyType ?? "N/A"}'),
                  Text('Pattern: ${duty.patternCode ?? "N/A"}'),
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

const dateShowFlex = 2;
const containerFlex = 11;
