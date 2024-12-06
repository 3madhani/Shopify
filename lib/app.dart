import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify/core/bindings/general_bindings.dart';

import 'core/utils/constants/colors.dart';
import 'core/utils/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(
          backgroundColor: AppColors.primary,
          body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}
