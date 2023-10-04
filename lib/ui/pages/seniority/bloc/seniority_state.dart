part of 'seniority_bloc.dart';

@immutable
sealed class SeniorityState {}

final class SeniorityInitial extends SeniorityState {}

final class SeniorityLoading extends SeniorityState {}

final class SeniorityLoaded extends SeniorityState {
  final List<SeniorityList> seniorityList;
  final int selfIndex;

  SeniorityLoaded({required this.seniorityList, required this.selfIndex});
}

final class SeniorityNoLocalCache extends SeniorityState {}

final class SeniorityError extends SeniorityState {
  final String errorMessage;

  SeniorityError({required this.errorMessage});
}
