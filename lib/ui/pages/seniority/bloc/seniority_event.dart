part of 'seniority_bloc.dart';

@immutable
sealed class SeniorityEvent {}

final class FetchFromLocal extends SeniorityEvent {}

final class FetchFromRemote extends SeniorityEvent {}

final class FilterList extends SeniorityEvent {
  final String? rank;
  final String? fleet;

  FilterList({required this.rank, required this.fleet});
}

final class ResetList extends SeniorityEvent {}
