import 'package:flutter/material.dart';
import 'package:oauthproject/utility/local_storage.dart';
import 'package:oauthproject/utility/token_flow.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await requestFromRefreshToken(
                  await readFromCache('refresh_token'));
            },
            child: const Text('Login')),
      ),
    );
  }
}
