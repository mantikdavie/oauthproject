import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oauthproject/bloc/auth_status_bloc.dart';

class AuthStatusIcon extends StatelessWidget {
  const AuthStatusIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthStatusBloc, AuthStatusState>(
      builder: (context, state) {
        debugPrint(state.toString());
        if (state is AuthStatusTokenExpired) {
          return const Icon(Icons.wifi_off_sharp);
        } else if (state is AuthStatusCheckInProgess) {
          return const CircularProgressIndicator();
        } else if (state is AuthStatusRefeshingToken) {
          return const CircularProgressIndicator();
        } else if (state is AuthStatusAuthenticated) {
          return const Icon(Icons.wifi);
        } else {
          return const Icon(Icons.error);
        }
      },
    );
  }
}
