import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reservate_practice_room/bottom_nav.dart';
import 'package:reservate_practice_room/home_screen/home_screen.dart';
import 'package:reservate_practice_room/info_screen/info_screen.dart';
import 'package:reservate_practice_room/login_screen.dart';
import 'package:reservate_practice_room/reservation_screen/reservation_screen.dart';

final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(initialLocation: '/login', routes: [
  GoRoute(
    path: '/login',
    builder: (context, state) => LoginScreen(),
  ),
  ShellRoute(
    navigatorKey: _shellNavigatorKey,
    builder: (context, state, child) => BottomNavigationBarScaffold(child: child),
    routes: [
      GoRoute(path: '/home', pageBuilder: (context, state) => const NoTransitionPage(child: HomeScreen())),
      GoRoute(path: '/reservation', pageBuilder: (context, state) => const NoTransitionPage(child: ReservationScreen())),
      GoRoute(path: '/info', pageBuilder: (context, state) => const NoTransitionPage(child: InfoScreen())),
    ],
  ),
]);
