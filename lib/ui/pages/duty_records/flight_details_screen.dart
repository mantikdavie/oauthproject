import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oauthproject/collection/duty_record.dart';
import 'package:intl/intl.dart';
import 'package:oauthproject/ui/pages/duty_records/bloc/flight_detail_crewlist_bloc.dart';

class FlightDetailsScreen extends StatelessWidget {
  final DutyRecord record;

  const FlightDetailsScreen({Key? key, required this.record}) : super(key: key);

  String formatDateTime(DateTime? dateTime, DateTime? referenceDate) {
    if (dateTime == null) return 'N/A';

    final formattedTime = DateFormat('HH:mm').format(dateTime.toUtc());

    if (referenceDate != null &&
        dateTime.isAfter(referenceDate.add(const Duration(days: 1)))) {
      return '$formattedTime+1';
    }

    return formattedTime;
  }

  String calculateDuration(DateTime? start, DateTime? end) {
    if (start == null || end == null) return 'N/A';
    final duration = end.difference(start);
    return '${duration.inHours}h ${duration.inMinutes.remainder(60)}m';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dutyStartDate = record.fltDate;
    final dutyCode =
        record.fltNo.toString(); // Add this line to define dutyCode
    final formattedDutyStartDate =
        DateFormat('yyyyMMdd').format(dutyStartDate ?? DateTime.now());
    return BlocProvider(
      create: (context) => FlightDetailCrewlistBloc()
        ..add(FetchFlightDetailCrewlist(
            dutyStartDate: formattedDutyStartDate, dutyCode: dutyCode)),
      child: Scaffold(
        backgroundColor: theme.colorScheme.surface,
        appBar: AppBar(
          title:
              Text('Flight CX${record.fltNo?.replaceFirst(RegExp('^0+'), '')}'),
          backgroundColor: theme.primaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                color: theme.primaryColor,
                child: Column(
                  children: [
                    Text(
                      '${record.sctOri ?? 'N/A'} → ${record.sctDstn ?? 'N/A'}',
                      style: theme.textTheme.headlineMedium
                          ?.copyWith(color: Colors.white),
                    ),
                    Text(
                      DateFormat('dd MMM yyyy')
                          .format(record.fltDate ?? DateTime.now()),
                      style: theme.textTheme.titleMedium
                          ?.copyWith(color: Colors.white70),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        _buildTimeRow('Scheduled (L)', record.deptrDtmUtc,
                            record.deptrDtmLoc, record.arrDtmLoc),
                        const Divider(),
                        _buildTimeRow('Out/In (UTC)', record.deptrDtmUtc,
                            record.deptrDtmUtc, record.arrDtmUtc),
                        const Divider(),
                        _buildTimeRow('Off/On (UTC)', record.deptrDtmUtc,
                            record.actTakeoffDtmUtc, record.actLandingDtmUtc),
                        const Divider(),
                        _buildInfoRow(
                            'Block Time', formatBlockTime(record.blockMins)),
                        _buildInfoRow('Aircraft',
                            '${record.acftTypeFr ?? 'N/A'} (${record.acftReg ?? 'N/A'})'),
                        _buildInfoRow('Commander', record.cmdrName ?? 'N/A'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Crew List',
                          style: theme.textTheme.titleLarge,
                        ),
                        const SizedBox(height: 8),
                        BlocBuilder<FlightDetailCrewlistBloc, FlightDetailCrewlistState>(
                    builder: (context, state) {
                      if (state is FlightDetailCrewlistLoading) {
                        return const CircularProgressIndicator();
                      } else if (state is FlightDetailCrewlistError) {
                        return Text('Error: ${state.message}');
                      } else if (state is FlightDetailCrewlistLoaded) {
                        final flightCrews = state.crewList.flightCrews;
                        final cabinCrews = state.crewList.cabinCrews;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (flightCrews.isNotEmpty) ...[
                              Text('Flight Crews', style: Theme.of(context).textTheme.titleMedium),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: flightCrews.length,
                                itemBuilder: (context, index) {
                                  final crewMember = flightCrews[index];
                                  return ListTile(
                                    title: Text(crewMember.crewBadgeName),
                                    subtitle: Text('${crewMember.crewCategory} - ${crewMember.basePort}'),
                                  );
                                },
                              ),
                            ],
                            if (cabinCrews.isNotEmpty) ...[
                              const SizedBox(height: 16),
                              Text('Cabin Crews', style: Theme.of(context).textTheme.titleMedium),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: cabinCrews.length,
                                itemBuilder: (context, index) {
                                  final crewMember = cabinCrews[index];
                                  return ListTile(
                                    title: Text(crewMember.crewBadgeName),
                                    subtitle: Text('${crewMember.crewCategory} - ${crewMember.basePort}'),
                                  );
                                },
                              ),
                            ],
                          ],
                        );
                      } else {
                        return const Text('No crew information available');
                      }
                    },
                  ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildTimeRow(
      String label, DateTime? referenceDate, DateTime? time1, DateTime? time2) {
    bool isScheduled = label.toLowerCase() == 'scheduled (l)';
    return Row(
      children: [
        Expanded(
          flex: 3,
          child:
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Text(),
              // const Icon(Icons.arrow_forward, size: 16),
              // Text(formatDateTime(time2, referenceDate)),
              Expanded(
                flex: 4,
                child: Text(
                  formatDateTime(time1, referenceDate),
                ),
              ),
              const Expanded(
                flex: 3,
                child: Icon(Icons.arrow_forward, size: 16),
              ),
              Expanded(
                flex: 4,
                child: Text(formatDateTime(time2,
                    referenceDate)), // This keeps the alignment consistent with _buildTimeRow
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: isScheduled
              ? const SizedBox()
              : Text(
                  calculateDuration(time1, time2),
                  textAlign: TextAlign.right,
                ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }

  String formatBlockTime(String? blockMins) {
    if (blockMins == null) return 'N/A';
    int mins = int.tryParse(blockMins) ?? 0;
    int hours = mins ~/ 60;
    int remainingMins = mins % 60;
    return '${hours.toString().padLeft(2, '0')}:${remainingMins.toString().padLeft(2, '0')}';
  }
}
