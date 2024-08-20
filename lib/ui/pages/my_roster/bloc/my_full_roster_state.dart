part of 'my_full_roster_bloc.dart';

@immutable
sealed class MyFullRosterState {}

class MyFullRosterInitial extends MyFullRosterState {}

class MyFullRosterLoading extends MyFullRosterState {}

class MyFullRosterLoaded extends MyFullRosterState {
  final MyFullRoster myFullRoster;

  MyFullRosterLoaded({required this.myFullRoster});
}

class MyFullRosterRemoteFetchFailedLoadingLocal extends MyFullRosterState {}

final class MyFullRosterNoLocalCache extends MyFullRosterState {}

class MyFullRosterError extends MyFullRosterState {
  final String errorMessage;

  MyFullRosterError({required this.errorMessage});
}
