import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oauthproject/bloc/auth_status_bloc.dart';
import 'package:oauthproject/utility/local_storage.dart';
import 'package:oauthproject/utility/token_flow.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.black38, background: Colors.grey),
          useMaterial3: true),
      home: BlocProvider(
        create: (context) => AuthStatusBloc()..add(AuthStatusChecking()),
        child: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BlocBuilder<AuthStatusBloc, AuthStatusState>(
          builder: (context, state) {
        if (state is AuthStatusInitial) {
          return const Center(child: Text('Initial State'));
        } else if (state is AuthStatusCheckInProgess) {
          return const Center(child: Text('Status Check in Progress'));
        } else if (state is AuthStatusUnauthenticated) {
          return Center(
            child: ElevatedButton(
                onPressed: () {
                  context.read<AuthStatusBloc>().add(AuthStatusRequestCode());
                },
                child: const Text('Login')),
          );
        } else if (state is AuthStatusAuthenticated) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Authenticated'),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () async {
                    final refreshToken = await readFromCache('refresh_token');
                    await requestFromRefreshToken(refreshToken);
                  },
                  child: const Text('Refresh Token'))
            ],
          ));
        } else if (state is AuthStatusOauthAccquired) {
          return const Center(child: Text('AuthStatusOauthAccquired'));
        } else if (state is AuthStatusUnkownError) {
          return const Center(child: Text('Unknown Error'));
        } else {
          return Container();
        }
      }),
    );
  }
}
