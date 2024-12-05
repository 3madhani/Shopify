import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopify/core/utils/constants/colors.dart';
import 'package:shopify/features/personalization/presentation/views/settings/settings_screen.dart';
import 'core/utils/helpers/helper_functions.dart';
import 'features/shop/presentation/views/home/home.dart';
import 'features/shop/presentation/views/store/store.dart';
import 'features/shop/presentation/views/wishlist/favorite_screen.dart';

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
    const StoreScreen(),
    const FavoriteScreen(),
    const SettingsScreen(),
  ];
}
