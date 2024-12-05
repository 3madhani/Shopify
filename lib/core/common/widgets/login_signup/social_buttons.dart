import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(180)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppImages.googleLogo,
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(188)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppImages.facebookLogo,
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
