import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/core/utils/constants/sizes.dart';
import 'package:t_store/core/utils/device/device_utility.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    super.key,
    this.title,
    this.showBackArrow = true,
    this.leadingIcon,
    this.actions,
    this.onLeadingPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? onLeadingPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.md,
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(
                  Iconsax.arrow_left,
                ),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: () => onLeadingPressed,
                    icon: Icon(
                      leadingIcon,
                    ),
                  )
                : null,
                title: title,
                actions: actions   ,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
