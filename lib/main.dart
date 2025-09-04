import 'package:flutter/material.dart';
import 'package:go_router_nav/config/routes/app_router.dart';
import 'package:go_router_nav/config/theme/app_theme.dart';

import 'package:go_router_nav/state/shared_providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Theme Demo',
      routerConfig: AppRouter.router,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode, // dynamic theme
    );
  }
}
