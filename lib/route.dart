import 'package:go_router/go_router.dart';
import 'package:reservate_practice_room/home_screen/home_screen.dart';
import 'package:reservate_practice_room/login_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
  ],
);
