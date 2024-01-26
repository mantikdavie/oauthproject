import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oauthproject/bloc/auth/auth_status_bloc.dart';

class LoginWebScreen extends StatefulWidget {
  const LoginWebScreen({super.key});

  @override
  State<LoginWebScreen> createState() => _LoginWebScreenState();
}

class _LoginWebScreenState extends State<LoginWebScreen> {
  final _idTokenController = TextEditingController();
  final _refreshTokenController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _idTokenController.dispose();
    _refreshTokenController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthStatusBloc, AuthStatusState>(
      listener: (context, state) {
        if (state is AuthStatusAuthenticated) {
          context.go('/');
        }
      },
      child: Scaffold(
        appBar:
            AppBar(backgroundColor: Theme.of(context).colorScheme.background),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            const Text('Enter the id Token:'),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextField(controller: _idTokenController)),
            const SizedBox(height: 50),
            const Text('Enter the Refresh Token:'),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextField(controller: _refreshTokenController)),
            const SizedBox(height: 50),
            Center(
              child: ElevatedButton(onPressed: () {
                final code = _idTokenController.text;
                debugPrint(code);
                context.read<AuthStatusBloc>().add(AuthStatusRequestToken(
                    idToken: _idTokenController.text,
                    refreshToken: _refreshTokenController.text));
              }, child: BlocBuilder<AuthStatusBloc, AuthStatusState>(
                builder: (context, state) {
                  if (state is AuthStatusCheckInProgess) {
                    return const CircularProgressIndicator();
                  } else {
                    return const Text('Save Token');
                  }
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
