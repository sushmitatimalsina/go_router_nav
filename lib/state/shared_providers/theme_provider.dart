import 'package:flutter/material.dart';
import 'package:go_router_nav/config/colors/app_color.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void setTheme(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColor.lightPrimary,
        scaffoldBackgroundColor: AppColor.whiteColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.lightPrimary,
          foregroundColor: AppColor.whiteColor,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColor.blackColor),
        ),
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColor.darkPrimary,
        scaffoldBackgroundColor: Colors.black, // pure dark bg
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.darkTheme,
          foregroundColor: AppColor.whiteColor,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColor.whiteColor),
        ),
      );
}
