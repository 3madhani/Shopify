import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../images/circular_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    required this.onPress,
  });

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(
        image: AppImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Emad Hany',
        style: Theme.of(context).textTheme.headlineSmall!.apply(
              color: AppColors.white,
            ),
      ),
      subtitle: Text(
        'support@store.com',
        style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: AppColors.white,
            ),
      ),
      trailing: IconButton(
          onPressed: onPress,
          icon: const Icon(
            Iconsax.edit,
            color: AppColors.white,
          )),
    );
  }
}
