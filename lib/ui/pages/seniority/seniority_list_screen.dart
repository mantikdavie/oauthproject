import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oauthproject/bloc/auth_status_bloc.dart';
import 'package:oauthproject/model/seniority_list/seniority_list.dart';
import 'package:oauthproject/ui/pages/seniority/bloc/seniority_bloc.dart';
import 'package:oauthproject/ui/widgets/auth_status_icon_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

const List<String> rankList = <String>['All', 'CN', 'FO', 'SO'];
const List<String> fleetList = <String>['All', 'E', 'T', '3', '5', '2', 'B'];

class SeniorityListScreen extends StatefulWidget {
  const SeniorityListScreen({super.key});

  @override
  State<SeniorityListScreen> createState() => _SeniorityListScreenState();
}

class _SeniorityListScreenState extends State<SeniorityListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SeniorityBloc()..add(FetchFromLocal()),
      child: Scaffold(
          // floatingActionButton: FloatingActionButton(onPressed: () {
          //   saveStringToCache('seniority_list', '');
          // }),
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            actions: const [SeniorityListRefreshButton(), AuthStatusIcon()],
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          body: const SeniorityListColumn()),
    );
  }
}

class SeniorityListRefreshButton extends StatelessWidget {
  const SeniorityListRefreshButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final authState = context.read<AuthStatusBloc>().state;
    return IconButton(
        onPressed: authState is AuthStatusAuthenticated
            ? () {
                context.read<SeniorityBloc>().add(FetchFromRemote());
              }
            : null,
        icon: const Icon(Icons.refresh));
  }
}

class SeniorityListColumn extends StatelessWidget {
  const SeniorityListColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SeniorityBloc, SeniorityState>(
      listener: (context, state) {
        if (state is SeniorityNoLocalCache) {
          context.read<SeniorityBloc>().add(FetchFromRemote());
        }
      },
      child: const Column(
        children: [
          SeniorityListFilterOptionsWidget(),
          SeniorityListViewWidget(),
        ],
      ),
    );
  }
}

class SeniorityListViewWidget extends StatefulWidget {
  const SeniorityListViewWidget({super.key});

  @override
  State<SeniorityListViewWidget> createState() =>
      _SeniorityListViewWidgetState();
}

class _SeniorityListViewWidgetState extends State<SeniorityListViewWidget> {
  final ItemScrollController itemScrollController = ItemScrollController();

  Future jumpToItem(index) async {
    await Future.delayed(const Duration(milliseconds: 500));

    itemScrollController.scrollTo(
        index: index,
        duration: const Duration(milliseconds: 1000),
        alignment: 0.25,
        curve: Curves.decelerate);  
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocConsumer<SeniorityBloc, SeniorityState>(
          listener: (context, state) async {
        if (state is SeniorityLoaded && state.selfIndex != -1) {
          debugPrint('selfIndex: ${state.selfIndex}');
          await jumpToItem(state.selfIndex);
        }
      }, builder: (context, state) {
        debugPrint('Current Seniority Bloc State: $state');
        if (state is SeniorityLoaded) {
          final List<SeniorityList> seniorityList;

          seniorityList = state.seniorityList;

          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: Center(child: Text('Count: ${seniorityList.length}')),
                ),
                Expanded(
                    flex: 1,
                    child: ScrollablePositionedList.builder(
                        itemScrollController: itemScrollController,
                        shrinkWrap: true,
                        itemCount: seniorityList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: index == state.selfIndex
                                ? BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary)
                                : null,
                            child: ListTile(
                                isThreeLine: false,
                                dense: true,
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        seniorityList[index].crewId.toString()),
                                    const SizedBox(width: 10),
                                    Text(seniorityList[index]
                                        .seniorityOrder
                                        .toString()),
                                  ],
                                ),
                                trailing: const Text(''),
                                subtitle: Text(
                                    '${seniorityList[index].fleet}-${seniorityList[index].rank}'),
                                onTap: () async {
                                  // context.push(
                                  //     '/crewlist/results/flightcrewprofile');
                                }),
                          );
                        })),
              ],
            ),
          );
        } else if (state is SeniorityLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(
              child: Text('Something went wrong, please try again later'));
        }
      }),
    );
  }
}

class SeniorityListFilterOptionsWidget extends StatefulWidget {
  const SeniorityListFilterOptionsWidget({super.key});

  @override
  State<SeniorityListFilterOptionsWidget> createState() =>
      _SeniorityListFilterOptionsWidgetState();
}

class _SeniorityListFilterOptionsWidgetState
    extends State<SeniorityListFilterOptionsWidget> {
  String rankDropDownValue = rankList.first;
  String fleetDropDownValue = fleetList.first;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        SizedBox(
          width: 80,
          child: DropdownButton<String>(
              value: rankDropDownValue,
              items: rankList
                  .map<DropdownMenuItem<String>>((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  rankDropDownValue = value!;
                });
                context.read<SeniorityBloc>().add(FilterList(
                    rank: rankDropDownValue, fleet: fleetDropDownValue));
              }),
        ),
        SizedBox(
          width: 80,
          child: DropdownButton<String>(
              value: fleetDropDownValue,
              items: fleetList
                  .map<DropdownMenuItem<String>>((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  fleetDropDownValue = value!;
                });
                context.read<SeniorityBloc>().add(FilterList(
                    rank: rankDropDownValue, fleet: fleetDropDownValue));
              }),
        ),
      ]),
    );
  }
}
