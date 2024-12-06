import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopify/core/common/widgets/app_bar/app_bar.dart';
import 'package:shopify/core/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopify/core/common/widgets/texts/section_heading.dart';
import 'package:shopify/features/authentication/data/repo/authentication/auth_repo.dart';
import 'package:shopify/features/personalization/presentation/views/address/address_screen.dart';
import 'package:shopify/features/personalization/presentation/views/profile/profile_screen.dart';
import 'package:shopify/features/personalization/presentation/views/settings/widgets/settings_menu_tile.dart';
import 'package:shopify/features/shop/presentation/views/order/order_screen.dart';

import '../../../../../core/common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../../core/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  AppAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Colors.white),
                    ),
                  ),

                  // user profile
                  UserProfileTile(
                    onPress: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            // body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  // account settings
                  const AppSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  SettingsMenuTile(
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  const SettingsMenuTile(
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                  ),
                  SettingsMenuTile(
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders',
                    icon: Iconsax.bag_tick,
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const SettingsMenuTile(
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                    icon: Iconsax.bank,
                  ),
                  const SettingsMenuTile(
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted coupons',
                    icon: Iconsax.discount_shape,
                  ),
                  const SettingsMenuTile(
                    title: 'Notifications',
                    subtitle: 'Set any kind of notifications message',
                    icon: Iconsax.notification,
                  ),
                  const SettingsMenuTile(
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                    icon: Iconsax.security_card,
                  ),

                  // app settings
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  const AppSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  const SettingsMenuTile(
                    title: 'Load Data',
                    subtitle: 'Upload Data to your Cloud Firebase',
                    icon: Iconsax.document_upload,
                  ),
                  SettingsMenuTile(
                    title: 'GeoLocation',
                    subtitle: 'Set recommendations based on your location',
                    icon: Iconsax.location,
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    icon: Iconsax.security_user,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    icon: Iconsax.image,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  // logout button
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () =>
                          AuthenticationRepository.instance.logout(),
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections * 2.5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
