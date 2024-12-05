import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/utils/theme/theme.dart';
import 'features/authentication/presentation/views/onboarding/onboarding.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
