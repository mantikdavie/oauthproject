import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oauthproject/bloc/auth/auth_status_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthStatusBloc, AuthStatusState>(
      listener: (context, state) {
        if (state is AuthStatusAuthenticated) {
          context.go('/');
        }
      },
      child: Scaffold(
        appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.surface),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                context.read<AuthStatusBloc>().add(AuthStatusRequestCode());
              },
              child: const Text('Login')),
        ),
      ),
    );
  }
}
