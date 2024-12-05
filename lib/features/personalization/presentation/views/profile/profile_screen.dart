import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopify/core/common/widgets/app_bar/app_bar.dart';
import 'package:shopify/core/common/widgets/images/circular_image.dart';
import 'package:shopify/core/common/widgets/texts/section_heading.dart';
import 'package:shopify/core/utils/constants/image_string.dart';
import 'package:shopify/core/utils/constants/sizes.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(
        title: Text(
          'Profile',
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // profile image
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CircularImage(
                      image: AppImages.user, width: 80, height: 80),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Change Profile Picture',
                    ),
                  ),
                ],
              ),
            ),

            // user info
            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            const Divider(),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            const AppSectionHeading(
              title: 'Profile Information',
              showActionButton: false,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),

            ProfileMenu(title: 'Name', value: 'Emad Hany', onTap: () {}),
            ProfileMenu(title: 'Username', value: 'Emad Hany', onTap: () {}),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: AppSizes.spaceBtwItems),

            const AppSectionHeading(
                title: 'Personal Information', showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems),

            ProfileMenu(
                title: 'User ID',
                value: '97482',
                icon: Iconsax.copy,
                onTap: () {}),
            ProfileMenu(title: 'E-mail', value: 'emadhany123', onTap: () {}),
            ProfileMenu(
                title: 'Phone Number', value: '+20123456789', onTap: () {}),
            ProfileMenu(title: 'Gender', value: 'Male', onTap: () {}),
            ProfileMenu(
                title: 'Date of Birth', value: '17 oct, 1999', onTap: () {}),
            const Divider(),
            const SizedBox(height: AppSizes.spaceBtwItems),

            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Close Account',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
