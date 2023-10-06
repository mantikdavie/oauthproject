import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oauthproject/model/flight_crew_list/flight_crew_list.dart';
import 'package:oauthproject/ui/widgets/auth_status_icon_widget.dart';

class CrewlistResultScreen extends StatelessWidget {
  final FlightCrewList crewList;

  const CrewlistResultScreen({super.key, required this.crewList});

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
                  const SizedBox(width: 150, child: Text('Flight Number: ')),
                  Center(
                    child: Text(crewList.flightNumber.toString()),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 150, child: Text('Departure Date: ')),
                  Text(crewList.flightDate.toString()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 150, child: Text('Departure Time: ')),
                  Text(
                      crewList.departureLocalTimestamp.toString().substring(8)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 150, child: Text('Dep: ')),
                  Center(
                    child: Text(crewList.departurePort.toString()),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 150, child: Text('Arr: ')),
                  Center(
                    child: Text(crewList.arrivalPort.toString()),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 150, child: Text('Aircraft Type: ')),
                  Center(
                    child: Text(crewList.aircraftType.toString()),
                  ),
                ],
              ),
              // const SizedBox(height: 20),
              // const Center(
              //   child: Text('Flight Crew'),
              // ),
              const SizedBox(height: 20),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: crewList.numberOfFlightCrew! +
                      crewList.numberOfCabinCrew!,
                  itemBuilder: (context, index) {
                    if (index <= crewList.numberOfFlightCrew! - 1) {
                      final flightCrewList = crewList.flightCrews;
                      final flightCrewTitle =
                          "${flightCrewList?[index].aircraftTypeQualificationCode}${flightCrewList?[index].crewCategory}${flightCrewList?[index].crewCategorySeniority}${flightCrewList?[index].qualificationSeniority}";
                      return ListTile(
                          isThreeLine: false,
                          dense: true,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  '${flightCrewList?[index].crewBadgeName} ${flightCrewList?[index].crewProfile?.surname}'),
                              const SizedBox(width: 10),
                              Text(flightCrewTitle),
                            ],
                          ),
                          trailing:
                              Text(flightCrewList![index].crewId.toString()),
                          subtitle: Text(flightCrewList[index]
                              .specialDutyCodeDesc
                              .toString()),
                          onTap: () => context.push(
                              '/crewlist/results/flightcrewprofile',
                              extra: flightCrewList[index].crewProfile));
                    } else if (index <=
                        crewList.numberOfCabinCrew! +
                            crewList.numberOfFlightCrew!) {
                      final newIndex = index - crewList.numberOfFlightCrew!;
                      final ccList = crewList.cabinCrews;
                      final ccTitle =
                          "${ccList?[newIndex].aircraftTypeQualificationCode} - ${ccList?[newIndex].crewCategory}";
                      return ListTile(
                        isThreeLine: false,
                        title: Text(ccTitle),
                        trailing: Text(ccList![newIndex].crewId.toString()),
                        subtitle: Text('${ccList[newIndex].crewBadgeName}'),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
