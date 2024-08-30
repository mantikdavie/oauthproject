import 'package:flutter/material.dart';
import 'package:oauthproject/collection/duty_record.dart';

class SimDetailsScreen extends StatelessWidget {
  final DutyRecord record;

  const SimDetailsScreen({Key? key, required this.record}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIM Details: ${record.gdDutyCode}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Date: ${record.dutyStartDtmLoc?.toString().split(' ')[0] ?? 'N/A'}',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Duty Code: ${record.gdDutyCode ?? 'N/A'}',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text('Special Duty: ${record.speclDutyCode ?? 'N/A'}',
                style: Theme.of(context).textTheme.titleMedium),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
