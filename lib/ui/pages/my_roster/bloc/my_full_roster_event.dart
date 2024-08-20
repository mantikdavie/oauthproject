part of 'my_full_roster_bloc.dart';

@immutable
sealed class MyFullRosterEvent {}

class FetchMyFullRosterFromLocal extends MyFullRosterEvent {}

class FetchMyFullRosterFromRemote extends MyFullRosterEvent {}

// Add more events as needed, e.g., for filtering, sorting, etc.
