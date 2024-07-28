import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oauthproject/main.dart';
import 'package:oauthproject/model/flight_crew_list/crew_profile.dart';
import 'package:oauthproject/model/flight_crew_list/flight_crew_list.dart';
import 'package:oauthproject/model/public_roster_crew_results/public_roster_crew_results.dart';
import 'package:oauthproject/model/sim_crew_list/sim_crew_list.dart';
import 'package:oauthproject/ui/pages/Profile/self_profile_screen.dart';
import 'package:oauthproject/ui/pages/crew_roster/crew_roster_screen.dart';
import 'package:oauthproject/ui/pages/crewlist/crewlist_result_screen.dart';
import 'package:oauthproject/ui/pages/crewlist/flight_crewlist_screen.dart';
import 'package:oauthproject/ui/pages/crewlist/simlist_result_screen.dart';
import 'package:oauthproject/ui/pages/json/json_screen.dart';
import 'package:oauthproject/ui/pages/login/login_screen.dart';
import 'package:oauthproject/ui/pages/login/login_web_screen.dart';
import 'package:oauthproject/ui/pages/profile/crew_profile_screen.dart';
import 'package:oauthproject/ui/pages/seniority/seniority_list_screen.dart';
import 'package:oauthproject/utility/local_storage.dart';

late final GoRouter router;

Future<GoRouter> initRouter() async {
  final String idToken = await readFromCache('id_token');
  final GoRouter router = GoRouter(
    initialLocation: idToken.isNotEmpty
        ? '/'
        : kIsWeb
            ? '/login_web'
            : '/login',
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
            path: 'crew-roster',
            builder: (context, state) {
              final roster = state.extra as PublicRosterCrewResults;
              return CrewRosterScreen(roster: roster);
            },
          ),
          GoRoute(
              path: 'flightcrewprofile',
              builder: (context, state) {
                final crewProfile = state.extra as CrewProfile;
                return CrewProfileScreen(crewProfile: crewProfile);
              }),
          GoRoute(
            path: 'crewlist-results',
            builder: (context, state) {
              final crewlist = state.extra as FlightCrewList;
              return CrewlistResultScreen(crewList: crewlist);
            },
          ),
          GoRoute(
            path: 'sim-crewlist-results',
            builder: (context, state) {
              final crewlist = state.extra as SimCrewList;
              return SimListResultScreen(simCrewList: crewlist);
            },
          ),
          GoRoute(
              path: 'crewlist-search',
              builder: (context, state) => const FlightCrewListScreen()),
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
      GoRoute(
          name: 'login_page_web',
          path: '/login_web',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginWebScreen();
          }),
      GoRoute(
        path: '/json-display',
        builder: (context, state) =>
            JsonDisplayScreen(jsonData: state.extra as Map<String, dynamic>),
      ),
    ],
  );

  return router;
}
