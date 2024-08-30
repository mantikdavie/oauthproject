import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oauthproject/collection/duty_record.dart';
import 'package:oauthproject/utility/isar_service.dart';
import 'package:oauthproject/utility/service_locator.dart';

part 'duty_records_event.dart';
part 'duty_records_state.dart';

class DutyRecordsBloc extends Bloc<DutyRecordsEvent, DutyRecordsState> {
  final IsarService _isarService = sl<IsarService>();

  DutyRecordsBloc() : super(DutyRecordsInitial()) {
    on<LoadDutyRecords>(_onLoadDutyRecords);
    on<ChangeYear>(_onChangeYear);
  }

  void _onLoadDutyRecords(
      LoadDutyRecords event, Emitter<DutyRecordsState> emit) async {
    emit(DutyRecordsLoading());
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      final years = await _isarService.getAvailableYears();
      final selectedYear = years.first;
      final records = await _isarService.getDutyRecordsByYear(selectedYear);
      emit(DutyRecordsLoaded(
          years: years, selectedYear: selectedYear, records: records));
    } catch (e) {
      emit(DutyRecordsError(message: e.toString()));
    }
  }

  void _onChangeYear(ChangeYear event, Emitter<DutyRecordsState> emit) async {
    if (state is DutyRecordsLoaded) {
      final currentState = state as DutyRecordsLoaded;
      emit(DutyRecordsLoading());
      try {
        final records = await _isarService.getDutyRecordsByYear(event.year);
        emit(DutyRecordsLoaded(
          years: currentState.years,
          selectedYear: event.year,
          records: records,
        ));
      } catch (e) {
        emit(DutyRecordsError(message: e.toString()));
      }
    }
  }
}
