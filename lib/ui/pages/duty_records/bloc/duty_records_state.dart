part of 'duty_records_bloc.dart';

abstract class DutyRecordsState {}

class DutyRecordsInitial extends DutyRecordsState {}

class DutyRecordsLoading extends DutyRecordsState {}

class DutyRecordsLoaded extends DutyRecordsState {
  final List<int> years;
  final int selectedYear;
  final List<DutyRecord> records;

  DutyRecordsLoaded({
    required this.years,
    required this.selectedYear,
    required this.records,
  });
}

class DutyRecordsError extends DutyRecordsState {
  final String message;

  DutyRecordsError({required this.message});
}
