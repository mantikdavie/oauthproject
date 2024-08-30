import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oauthproject/collection/duty_record.dart';
import 'package:oauthproject/ui/pages/duty_records/bloc/duty_records_bloc.dart';
import 'package:oauthproject/utility/isar_service.dart';
import 'package:oauthproject/utility/service_locator.dart';
import 'package:intl/intl.dart';

enum DutyFilter { all, flight, sim }

class DutyRecordsScreen extends StatefulWidget {
  const DutyRecordsScreen({Key? key}) : super(key: key);

  @override
  State<DutyRecordsScreen> createState() => _DutyRecordsScreenState();
}

class _DutyRecordsScreenState extends State<DutyRecordsScreen> {
  DutyFilter _currentFilter = DutyFilter.all;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DutyRecordsBloc()..add(LoadDutyRecords()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Duty Records'),
          actions: [
            IconButton(
              icon: Icon(_currentFilter == DutyFilter.all
                  ? Icons.list
                  : _currentFilter == DutyFilter.flight
                      ? Icons.flight
                      : Icons.computer),
              onPressed: () {
                setState(() {
                  _currentFilter = DutyFilter.values[
                      (_currentFilter.index + 1) % DutyFilter.values.length];
                });
              },
            ),
            BlocBuilder<DutyRecordsBloc, DutyRecordsState>(
              builder: (context, state) {
                if (state is DutyRecordsLoaded) {
                  return DropdownButton<int>(
                    value: state.selectedYear,
                    items: state.years.map((int year) {
                      return DropdownMenuItem<int>(
                        value: year,
                        child: Text(year.toString()),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      if (newValue != null) {
                        context
                            .read<DutyRecordsBloc>()
                            .add(ChangeYear(newValue));
                      }
                    },
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
        body: BlocBuilder<DutyRecordsBloc, DutyRecordsState>(
          builder: (context, state) {
            if (state is DutyRecordsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is DutyRecordsLoaded) {
              return StreamBuilder<Map<int, List<DutyRecord>>>(
                stream: sl<IsarService>()
                    .watchDutyRecordsByYearGroupedByMonth(state.selectedYear),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final groupedRecords = snapshot.data!;
                    return ListView.builder(
                      itemCount: groupedRecords.length,
                      itemBuilder: (context, index) {
                        final month = groupedRecords.keys.elementAt(index);
                        final records = groupedRecords[month]!;
                        final filteredRecords = _filterRecords(records);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                DateFormat('MMMM').format(
                                    DateTime(state.selectedYear, month)),
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            ...filteredRecords.map(_buildDutyTile),
                          ],
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              );
            } else if (state is DutyRecordsError) {
              return Center(child: Text('Error: ${state.message}'));
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }

  List<DutyRecord> _filterRecords(List<DutyRecord> records) {
    switch (_currentFilter) {
      case DutyFilter.flight:
        return records.where((record) => record.fltNo != null).toList();
      case DutyFilter.sim:
        return records.where((record) => record.gdDutyCode != null).toList();
      case DutyFilter.all:
      default:
        return records;
    }
  }

  Widget _buildDutyTile(DutyRecord record) {
    final bool isFlightDuty = record.fltNo != null;
    final bool isSimDuty = record.gdDutyCode != null;

    if (isFlightDuty) {
      return ListTile(
        leading: const Icon(Icons.flight),
        title: Text('CX${record.fltNo?.replaceFirst(RegExp('^0+'), '')}'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Date: ${record.fltDate?.toString().split(' ')[0] ?? 'N/A'}'),
            Text('${record.sctOri ?? 'N/A'} - ${record.sctDstn ?? 'N/A'}'),
          ],
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Aircraft: ${record.acftReg ?? 'N/A'}'),
            Text(record.cmdrName ?? 'N/A',
                style:
                    const TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
          ],
        ),
        onTap: () => context.push('/flight-details', extra: record),
      );
    } else if (isSimDuty) {
      return ListTile(
        leading: const Icon(Icons.computer),
        title: Text('SIM Duty: ${record.gdDutyCode}'),
        subtitle: Text(
            'Start: ${record.dutyStartDtmLoc?.toString().split(' ')[0] ?? 'N/A'}'),
        trailing: Text('Duty: ${record.speclDutyCode ?? 'N/A'}'),
        onTap: () => context.push('/sim-details', extra: record),
      );
    } else {
      return ListTile(
        leading: const Icon(Icons.work),
        title: const Text('Other Duty'),
        subtitle:
            Text('Date: ${record.fltDate?.toString().split(' ')[0] ?? 'N/A'}'),
      );
    }
  }
}
