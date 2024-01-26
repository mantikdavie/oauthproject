part of 'auth_status_bloc.dart';

@immutable
sealed class AuthStatusState {}

final class AuthStatusInitial extends AuthStatusState {}

final class AuthStatusFirstTime extends AuthStatusState {}

final class AuthStatusCheckInProgess extends AuthStatusState {}

final class AuthStatusUnauthenticated extends AuthStatusState {}

final class AuthStatusOauthAccquired extends AuthStatusState {}

final class AuthStatusAuthenticated extends AuthStatusState {}

final class AuthStatusTokenExpired extends AuthStatusState {}

final class AuthStatusRefeshingToken extends AuthStatusState {}

final class AuthStatusUnkownError extends AuthStatusState {}
