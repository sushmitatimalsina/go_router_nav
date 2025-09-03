import 'package:go_router/go_router.dart';
import 'package:go_router_nav/home.dart';
import 'package:go_router_nav/setting.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: "/home",
    routes:[
      GoRoute(path: '/home',
      builder: (context,state) => HomeScreen()
      ),
      GoRoute(path: '/settings',
      builder: (context,state) => SettingScreen()
      ),
    ]
    
  );
  
    
}