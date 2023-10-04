part of 'self_profile_bloc.dart';

@immutable
sealed class SelfProfileEvent {}

final class ProfileInitialEvent extends SelfProfileEvent {}

final class ProfileFetchRemoteEvent extends SelfProfileEvent {}

final class ProfileFetchLocalEvent extends SelfProfileEvent {}
