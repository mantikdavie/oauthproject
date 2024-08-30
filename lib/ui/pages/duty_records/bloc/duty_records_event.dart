part of 'duty_records_bloc.dart';

abstract class DutyRecordsEvent {}

class LoadDutyRecords extends DutyRecordsEvent {}

class ChangeYear extends DutyRecordsEvent {
  final int year;

  ChangeYear(this.year);
}
