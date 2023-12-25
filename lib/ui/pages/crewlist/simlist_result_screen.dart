import 'package:flutter/material.dart';
import 'package:oauthproject/model/sim_crew_list/sim_crew_list.dart';
import 'package:oauthproject/ui/widgets/auth_status_icon_widget.dart';

class SimListResultScreen extends StatelessWidget {
  final SimCrewList simCrewList;

  const SimListResultScreen({super.key, required this.simCrewList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: const [AuthStatusIcon()],
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 150, child: Text('Duty Code: ')),
                  Center(
                    child: Text(simCrewList.dutyCode.toString()),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 150, child: Text('Duty Start Date: ')),
                  Text(simCrewList.dutyStartDate.toString()),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                flex: 1,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: simCrewList.crewArray?.length,
                    itemBuilder: (context, index) {
                      final crewList = simCrewList.crewArray;
                      final flightCrewTitle =
                          "${crewList?[index].aircraftTypeQualificationCode}${crewList?[index].crewCategory}${crewList?[index].crewCategorySeniority}${crewList?[index].qualificationSeniority}";
                      return Card(
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(10),
                          isThreeLine: false,
                          dense: false,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  '${crewList?[index].crewBadgeName} ${crewList?[index].crewProfile?.surname}'),
                              // const SizedBox(width: 10),
                              Text(flightCrewTitle),
                            ],
                          ),
                          subtitle:
                              Text(crewList![index].specialDutyCode ?? ""),
                          // onTap: () => context.push('/flightcrewprofile',
                          //     extra: crewList[index].crewProfile)
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
