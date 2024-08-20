import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oauthproject/bloc/auth/auth_status_bloc.dart';

class AuthControllerWidget extends StatelessWidget {
  const AuthControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthStatusBloc, AuthStatusState>(
      builder: (context, state) {
        return Container();
      },
    );
  }
}
