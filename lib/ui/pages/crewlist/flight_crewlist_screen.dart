import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  void initState() {
    super.initState();
    // Set the initial value of dutyStartDateController to today's date
    dutyStartDateController.text = _getFormattedDate(DateTime.now());
  }

  @override
  void dispose() {
    dutyCodeController.dispose();
    dutyStartDateController.dispose();
    super.dispose();
  }

  String _getFormattedDate(DateTime date) {
    return "${date.year}${date.month.toString().padLeft(2, '0')}${date.day.toString().padLeft(2, '0')}";
  }

  void _incrementDate() {
    final currentDate = _parseDate(dutyStartDateController.text);
    final newDate = currentDate.add(const Duration(days: 1));
    dutyStartDateController.text = _getFormattedDate(newDate);
  }

  void _decrementDate() {
    final currentDate = _parseDate(dutyStartDateController.text);
    final newDate = currentDate.subtract(const Duration(days: 1));
    dutyStartDateController.text = _getFormattedDate(newDate);
  }

  DateTime _parseDate(String dateString) {
    return DateTime(
      int.parse(dateString.substring(0, 4)),
      int.parse(dateString.substring(4, 6)),
      int.parse(dateString.substring(6, 8)),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('FlightCrewListScreen build');
    return CrewListSearch(
      dutyCodeController: dutyCodeController,
      dutyStartDateController: dutyStartDateController,
      incrementDate: _incrementDate,
      decrementDate: _decrementDate,
    );
  }
}

class CrewListSearch extends StatefulWidget {
  const CrewListSearch({
    super.key,
    required this.dutyCodeController,
    required this.dutyStartDateController,
    required this.incrementDate,
    required this.decrementDate,
  });

  final TextEditingController dutyCodeController;
  final TextEditingController dutyStartDateController;
  final VoidCallback incrementDate;
  final VoidCallback decrementDate;

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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Center(child: Text('Duty Code')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    // Add SizedBox here
                    width: 100,
                    child: TextFormField(
                      controller: widget.dutyCodeController,
                      textCapitalization: TextCapitalization.characters,
                      keyboardType:
                          isSim ? TextInputType.text : TextInputType.number,
                      inputFormatters: [
                        if (!isSim) FilteringTextInputFormatter.digitsOnly,
                        if (isSim) _SimDutyCodeFormatter(),
                      ],
                      decoration: InputDecoration(
                        hintText: isSim ? "e.g A1124" : "",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Center(child: Text('Duty Start Date')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: widget.decrementDate,
                    icon: const Icon(Icons.remove),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextFormField(
                      controller: widget.dutyStartDateController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "e.g., 20231026",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    onPressed: widget.incrementDate,
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Simulator Duty:'),
                  Switch(
                    value: isSim,
                    onChanged: (value) {
                      setState(() {
                        isSim = value;
                        widget.dutyCodeController.clear();
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Disable the button and show loading indicator if already in a loading state
                  if (context.read<FlightCrewlistBloc>().state is FclLoading)
                    return;

                  if (widget.dutyCodeController.text.isNotEmpty &&
                      widget.dutyStartDateController.text.isNotEmpty) {
                    if (isSim) {
                      context.read<FlightCrewlistBloc>().add(RequestSimEvent(
                          dutyCode: widget.dutyCodeController.text,
                          dutyStartDate: widget.dutyStartDateController.text));
                    } else {
                      context.read<FlightCrewlistBloc>().add(RequestFclEvent(
                          dutyCode: widget.dutyCodeController.text,
                          dutyStartDate: widget.dutyStartDateController.text));
                    }
                  }
                },
                child: BlocBuilder<FlightCrewlistBloc, FlightCrewlistState>(
                  builder: (context, state) {
                    if (state is FclLoading) {
                      return const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      );
                    } else {
                      return const Text('Submit');
                    }
                  },
                ),
              ),
              const SizedBox(height: 30),
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
          ),
        ),
      ),
    );
  }
}

class _SimDutyCodeFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text.toUpperCase();
    if (text.length > 5) {
      text = text.substring(0, 5);
    }
    if (text.isNotEmpty) {
      if (RegExp(r'^[A-Z]\d{0,4}$').hasMatch(text)) {
        return newValue.copyWith(text: text);
      }
    }
    return oldValue;
  }
}
