import 'package:go_router/go_router.dart';
import 'package:go_router_nav/pages/home1.dart';
import 'package:go_router_nav/pages/setting.dart';
import 'package:go_router_nav/pages/home.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: "/home1",
    routes: [
      GoRoute(
        path: '/home1',
        builder: (context, state) => const HomeScreen1(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomeScreen(),
      ),
    ],
  );
}
