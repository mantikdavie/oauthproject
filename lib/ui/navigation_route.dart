import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oauthproject/main.dart';
import 'package:oauthproject/model/flight_crew_list/flight_crew.dart';
import 'package:oauthproject/model/flight_crew_list/flight_crew_list.dart';
import 'package:oauthproject/ui/pages/Profile/self_profile_screen.dart';
import 'package:oauthproject/ui/pages/crewlist/crewlist_result_screen.dart';
import 'package:oauthproject/ui/pages/crewlist/flight_crewlist_screen.dart';
import 'package:oauthproject/ui/pages/login/login_screen.dart';
import 'package:oauthproject/ui/pages/profile/crew_profile_screen.dart';
import 'package:oauthproject/ui/pages/seniority/seniority_list_screen.dart';
import 'package:oauthproject/utility/local_storage.dart';

late final GoRouter router;

Future<GoRouter> initRouter() async {
  final String idToken = await readFromCache('id_token');
  final GoRouter router = GoRouter(
    initialLocation: idToken.isNotEmpty ? '/' : '/login',
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        routes: [
          GoRoute(
              path: 'profile',
              builder: (context, state) => const SelfProfileScreen()),
          GoRoute(
              path: 'crewlist',
              builder: (context, state) => const FlightCrewListScreen(),
              routes: [
                GoRoute(
                    path: 'results',
                    builder: (context, state) {
                      final crewlist = state.extra as FlightCrewList;
                      return CrewlistResultScreen(crewList: crewlist);
                    },
                    routes: [
                      GoRoute(
                        path: 'flightcrewprofile',
                        builder: (context, state) {
                          final flightCrew = state.extra as FlightCrew;
                          return CrewProfileScreen(flightCrew: flightCrew);
                        },
                      )
                    ]),
              ]),
              GoRoute(
              path: 'seniority',
              builder: (context, state) => const SeniorityListScreen()),
        ],
      ),
      GoRoute(
          name: 'login_page',
          path: '/login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginScreen();
          }),
    ],
  );

  return router;
}
