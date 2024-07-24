import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oauthproject/ui/pages/crewlist/bloc/flight_crewlist_bloc.dart';
import 'package:oauthproject/ui/widgets/auth_status_icon_widget.dart';

class FlightCrewListScreen extends StatefulWidget {
  const FlightCrewListScreen({super.key});

  @override
  State<FlightCrewListScreen> createState() => _FlightCrewListScreenState();
}

class _FlightCrewListScreenState extends State<FlightCrewListScreen> {
  final dutyCodeController = TextEditingController();
  final dutyStartDateController = TextEditingController();

  @override
  void dispose() {
    dutyCodeController.dispose();
    dutyStartDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('FlightCrewListScreen build');
    return CrewListSearch(
      dutyCodeController: dutyCodeController,
      dutyStartDateController: dutyStartDateController,
    );
  }
}

class CrewListSearch extends StatefulWidget {
  const CrewListSearch({
    super.key,
    required this.dutyCodeController,
    required this.dutyStartDateController,
  });

  final TextEditingController dutyCodeController;
  final TextEditingController dutyStartDateController;

  @override
  State<CrewListSearch> createState() => _CrewListSearchState();
}

class _CrewListSearchState extends State<CrewListSearch> {
  bool isSim = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<FlightCrewlistBloc, FlightCrewlistState>(
      listener: (context, state) {
        if (state is FclNotFound) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Crew List Not Found")));
        } else if (state is FclLoaded) {
          context.push('/crewlist-results', extra: state.flightCrewList);
        } else if (state is SimCrewListLoaded) {
          context.push('/sim-crewlist-results', extra: state.simCrewList);
        }
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            actions: const [AuthStatusIcon()],
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Column(
            children: [
              const SizedBox(height: 60),
              const Center(child: Text('Duty Code')),
              Center(
                  child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: widget.dutyCodeController,
                          textCapitalization: TextCapitalization.characters,
                          keyboardType:
                              isSim ? TextInputType.text : TextInputType.number,
                          textAlign: TextAlign.center))),
              const SizedBox(height: 50),
              const Center(child: Text('Duty Start Date')),
              Center(
                  child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: widget.dutyStartDateController,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center))),
              const SizedBox(height: 50),
              Switch(
                value: isSim,
                onChanged: (value) {
                  setState(() {
                    isSim = value;
                  });
                },
              ),
              Center(
                  child: BlocBuilder<FlightCrewlistBloc, FlightCrewlistState>(
                builder: (context, state) {
                  if (state is FclLoading) {
                    return const CircularProgressIndicator();
                  } else {
                    return ElevatedButton(
                        onPressed: () {
                          if (widget.dutyCodeController.text.isNotEmpty &&
                              widget.dutyStartDateController.text.isNotEmpty) {
                            if (isSim) {
                              context.read<FlightCrewlistBloc>().add(
                                  RequestSimEvent(
                                      dutyCode: widget.dutyCodeController.text,
                                      dutyStartDate:
                                          widget.dutyStartDateController.text));
                              // TestRequestSimEvent());
                            } else {
                              context.read<FlightCrewlistBloc>().add(
                                  RequestFclEvent(
                                      dutyCode: widget.dutyCodeController.text,
                                      dutyStartDate:
                                          widget.dutyStartDateController.text));
                            }
                          }
                          // context
                          //     .read<FlightCrewlistBloc>()
                          //     .add(TestRequestFclEvent());
                        },
                        child: const Text('Submit'));
                  }
                },
              )),
              const SizedBox(height: 60),
              BlocBuilder<FlightCrewlistBloc, FlightCrewlistState>(
                builder: (context, state) {
                  if (state is FclMultiSectorLoaded) {
                    final sectors = state.sectors;

                    return Expanded(
                      child: ListView.builder(
                          itemCount: sectors.length,
                          itemBuilder: (context, index) {
                            final sector = sectors[index];

                            return Center(
                                child: ElevatedButton(
                                    onPressed: () {
                                      context.read<FlightCrewlistBloc>().add(
                                          RequestSectorFclEvent(
                                              dutyCode: state.dutyCode,
                                              dutyStartDate:
                                                  state.dutyStartDate,
                                              sector: sector));
                                    },
                                    child: Text('$sector')));
                          }),
                    );
                  } else {
                    return Container();
                  }
                },
              )
            ],
          )),
    );
  }
}

class SimToggleSwitch extends StatefulWidget {
  const SimToggleSwitch({super.key});

  @override
  State<SimToggleSwitch> createState() => _SimToggleSwitchState();
}

class _SimToggleSwitchState extends State<SimToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: true,
        onChanged: (newValue) {
          setState(() {});
        });
  }
}
