import 'package:flutter/material.dart';
import 'package:go_router_nav/config/colors/app_color.dart';
import 'package:go_router_nav/core/constants/app_strings.dart';
import 'package:provider/provider.dart';
import 'package:go_router_nav/state/shared_providers/theme_provider.dart';
import 'package:go_router_nav/features/components/buttons/custom_theme_button.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.themeSelector),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              AppStrings.selectYourTheme,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),

            /// Theme Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomThemeButton(
                  icon: Icons.wb_sunny,
                  label: AppStrings.light,
                  isSelected: themeProvider.themeMode == ThemeMode.light,
                  selectedColor: AppColor.lightTheme,
                  unselectedColor: AppColor.darkPrimary,
                  onTap: () => themeProvider.setTheme(ThemeMode.light),
                ),
                const SizedBox(width: 20),
                CustomThemeButton(
                  icon: Icons.nights_stay,
                  label: AppStrings.dark,
                  isSelected: themeProvider.themeMode == ThemeMode.dark,
                  selectedColor: AppColor.darkTheme,
                  unselectedColor: AppColor.darkPrimary,
                  onTap: () => themeProvider.setTheme(ThemeMode.dark),
                ),
                const SizedBox(width: 20),
                CustomThemeButton(
                  icon: Icons.settings,
                  label: AppStrings.system,
                  isSelected: themeProvider.themeMode == ThemeMode.system,
                  selectedColor: AppColor.systemTheme,
                  unselectedColor: AppColor.darkPrimary,
                  onTap: () => themeProvider.setTheme(ThemeMode.system),
                ),
              ],
            ),

            const SizedBox(height: 40),

            /// Current Theme Info
            Text(
              'Current Theme: ${themeProvider.themeMode.name.toUpperCase()}',
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
