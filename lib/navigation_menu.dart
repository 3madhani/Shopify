import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/core/utils/constants/colors.dart';
import 'package:t_store/features/store/presentation/views/home/home.dart';

import 'core/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: darkMode ? AppColors.black : AppColors.white,
          selectedIndex: controller.selectionIndex.value,
          onDestinationSelected: (index) =>
              controller.selectionIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectionIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectionIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
}
