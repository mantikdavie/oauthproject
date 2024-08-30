import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:oauthproject/bloc/auth/auth_status_bloc.dart';
import 'package:oauthproject/collection/collection.dart';
import 'package:oauthproject/firebase_options.dart';
import 'package:oauthproject/ui/navigation_route.dart';
import 'package:oauthproject/ui/pages/crew_roster/bloc/crew_roster_bloc.dart';
import 'package:oauthproject/ui/pages/crewlist/bloc/flight_crewlist_bloc.dart';
import 'package:oauthproject/ui/pages/profile/bloc/crew_profile_bloc.dart';
import 'package:oauthproject/ui/pages/profile/bloc/self_profile_bloc.dart';
import 'package:oauthproject/ui/widgets/auth_status_icon_widget.dart';
import 'package:oauthproject/utility/api.dart';
import 'package:oauthproject/utility/isar_service.dart';
import 'package:oauthproject/utility/local_storage.dart';
import 'package:oauthproject/utility/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //   return true;
  // };
  await setupServiceLocator();
  router = await initRouter();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthStatusBloc()..add(AuthStatusChecking()),
        ),
        BlocProvider(create: (context) => CrewProfileBloc()),
        BlocProvider(create: (context) => CrewRosterBloc()),
        BlocProvider(create: (context) => FlightCrewlistBloc()),
        BlocProvider(create: (context) {
          if (context.read<AuthStatusBloc>().state is AuthStatusTokenExpired) {
            return SelfProfileBloc()..add(ProfileFetchLocalEvent());
          } else {
            return SelfProfileBloc()..add(ProfileFetchRemoteEvent());
          }
        })
      ],
      child: MaterialApp.router(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.black38, surface: Colors.grey[300]),
            useMaterial3: true),
        // home: const LoginPage(),
        routerConfig: router,
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0.5,
        title: const Text('Home'),
        actions: const [
          AuthStatusIcon(),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: BlocBuilder<AuthStatusBloc, AuthStatusState>(
          builder: (context, state) {
        if (state is AuthStatusInitial) {
          return const Center(child: Text('Initial State'));
        } else if (state is AuthStatusCheckInProgess) {
          return const Center(child: Text('Status Check in Progress'));
        } else if (state is AuthStatusUnauthenticated) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context
                          .read<AuthStatusBloc>()
                          .add(AuthStatusRequestCode());
                    },
                    child: const Text('Login')),
                ElevatedButton(
                    onPressed: () {
                      context
                          .read<AuthStatusBloc>()
                          .add(AuthStatusRefreshToken());
                    },
                    child: const Text('Refresh Token')),
              ],
            ),
          );
        } else if (state is AuthStatusAuthenticated) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Authenticated'),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => context
                      .read<AuthStatusBloc>()
                      .add(AuthStatusRefreshToken()),
                  child: const Text('Refresh Token')),
              ElevatedButton(
                  onPressed: () => context.go('/profile'),
                  child: const Text('Profile')),
              ElevatedButton(
                  onPressed: () => context.go('/roster'),
                  child: const Text('My Roster')),
              ElevatedButton(
                  onPressed: () => context.go('/crewlist-search'),
                  child: const Text('Crewlist')),
              ElevatedButton(
                  onPressed: () => context.go('/seniority'),
                  child: const Text('Seniority List')),
              ElevatedButton(
                  onPressed: () => context.go('/duty-records'),
                  child: const Text('Duty Records')),
              const SizedBox(height: 20),
              ElevatedButton(
                  // onPressed: () =>
                  //     context.read<AuthStatusBloc>().add(AuthStatusVoidToken()),
                  onPressed: () async {
                    await sl<IsarService>().addPseudoRecord();
                  },
                  child: const Text('expire the id token')),
              ElevatedButton(
                  onPressed: () async {
                    final String jsonString = await rootBundle
                        .loadString("assets/mockup/logbook_full_px_sim.json");
                    final List<Map<String, dynamic>> jsonData =
                        List<Map<String, dynamic>>.from(
                            json.decode(jsonString));
                    // debugPrint(jsonData.toString());
                    await sl<IsarService>().importLogbookData(jsonData);
                  },
                  child: const Text('import logbook Test')),
            ],
          ));
        } else if (state is AuthStatusOauthAccquired) {
          return const Center(child: Text('AuthStatusOauthAccquired'));
        } else if (state is AuthStatusUnkownError) {
          return const Center(child: Text('Unknown Error'));
        } else if (state is AuthStatusTokenExpired) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(child: Text('AuthStatusTokenExpired')),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<AuthStatusBloc>()
                        .add(AuthStatusRefreshToken());
                  },
                  child: const Text('Refresh Token')),
              ElevatedButton(
                  onPressed: () async {
                    // await getBaseRequest(
                    //     'cls-api/v1/profile', {'ern': '127710G'});
                    context.go('/profile');
                  },
                  child: const Text('Profile')),
              ElevatedButton(
                  onPressed: () => context.go('/roster'),
                  child: const Text('My Roster')),
              ElevatedButton(
                  onPressed: () async => context.go('/seniority'),
                  child: const Text('Seniority List')),
            ],
          );
        } else if (state is AuthStatusRefeshingToken) {
          return const Center(child: Text('AuthStatusRefeshingToken'));
        } else {
          return Container();
        }
      }),
    );
  }
}
