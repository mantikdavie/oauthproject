import 'package:flutter/material.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/microsoft_oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:oauthproject/utility/local_storage.dart';

class Oauth2ClientPage extends StatefulWidget {
  const Oauth2ClientPage({super.key});

  @override
  State<Oauth2ClientPage> createState() => _Oauth2ClientPageState();
}

class _Oauth2ClientPageState extends State<Oauth2ClientPage> {
  String code = '';
  Map<String, dynamic> tokenResp = {};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Oauth2 Client',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 12, 12, 13)),
          useMaterial3: true,
        ),
        home: Oauth2ClientLoginUI(code: code, tokenResp: tokenResp));
  }
}

class Oauth2ClientLoginUI extends StatelessWidget {
  final String code;
  final Map<String, dynamic> tokenResp;

  const Oauth2ClientLoginUI({
    super.key,
    required this.code,
    required this.tokenResp,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Oauth2 Client Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () async {
                  // if (kIsWeb) {
                  final result = await client.requestAuthorization(
                      enableState: false,
                      clientId: 'f249d3fd-6586-4cde-a844-59f984c2dcbb',
                      scopes: ['openid offline_access'],
                      customParams: {'response_mode': 'query'});

                  // debugPrint(result.code);
                  writeStringToCache('oauth_code', result.code.toString());

                  // }
                },
                child: const Text("Crew Link Sign In")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  final code = await readFromCache('oauth_code');
                  print(code);
                  if (code != null) {
                    final result2 = await client.requestAccessToken(
                      code: code.toString(),
                      clientId: 'f249d3fd-6586-4cde-a844-59f984c2dcbb',
                      scopes: ['openid offline_access'],
                      // customParams: {'response_mode': 'query'},
                    );

                    var respMap = result2.toMap();
                    debugPrint(respMap.toString());
                    debugPrint(respMap["id_token"]);

                    writeStringToCache('token_resp', respMap.toString());
                    writeStringToCache('id_token', respMap["id_token"]);
                  }
                },
                child: const Text("Get Token"))
          ],
        ),
      ),
    );
  }
}

OAuth2Client client = MicrosoftOauth2Client(
  tenant: "f62aca8c-2ba2-417b-a0c1-ab3f1020ccc4",
  redirectUri:
      'com.cathaypacific.crewlifestyle://com.cathaypacific.crewlifestyle.callback',
  customUriScheme: 'com.cathaypacific.crewlifestyle',
);

OAuth2Helper oauthHelper = OAuth2Helper(
  client,
  clientId: 'f249d3fd-6586-4cde-a844-59f984c2dcbb',
  scopes: ['openid offline_access'],
);

// "https://login.microsoftonline.com/
// f62aca8c-2ba2-417b-a0c1-ab3f1020ccc4/oauth2/v2.0/authorize?
// client_id=f249d3fd-6586-4cde-a844-59f984c2dcbb
// &response_type=code
// &redirect_uri=com.cathaypacific.crewlifestyle://com.cathaypacific.crewlifestyle.callback&
// response_mode=query&scope=openid%20offline_access");
