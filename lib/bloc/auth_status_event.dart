part of 'auth_status_bloc.dart';

@immutable
sealed class AuthStatusEvent {}

final class AuthStatusChecking extends AuthStatusEvent {}

final class AuthStatusRequestCode extends AuthStatusEvent {}

final class AuthStatusRequestToken extends AuthStatusEvent {}

final class AuthStatusRefreshToken extends AuthStatusEvent {}

final class AuthStatusVoidToken extends AuthStatusEvent {}
