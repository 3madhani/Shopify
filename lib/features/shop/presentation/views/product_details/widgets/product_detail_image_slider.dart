import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../core/common/widgets/app_bar/app_bar.dart';
import '../../../../../../core/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../../../core/common/widgets/icons/circular_icon.dart';
import '../../../../../../core/common/widgets/images/rounded_image.dart';
import '../../../../../../core/utils/constants/colors.dart';
import '../../../../../../core/utils/constants/image_string.dart';
import '../../../../../../core/utils/constants/sizes.dart';
import '../../../../../../core/utils/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
        child: Container(
      color: dark ? AppColors.darkerGrey : AppColors.light,
      child: Stack(
        children: [
          // Main image
          const SizedBox(
            height: 400,
            child: Padding(
              padding: EdgeInsets.all(AppSizes.productImageRadius * 2),
              child: Center(
                  child: Image(
                image: AssetImage(AppImages.product3),
              )),
            ),
          ),

          // image slider

          Positioned(
            right: 0,
            bottom: 30,
            left: AppSizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                separatorBuilder: (_, __) => const SizedBox(
                  width: AppSizes.spaceBtwItems,
                ),
                itemBuilder: (_, index) => RoundedImage(
                  width: 80,
                  backgroundColor: dark ? AppColors.dark : AppColors.white,
                  border: Border.all(color: AppColors.primary),
                  padding: const EdgeInsets.all(AppSizes.sm),
                  imageUrl: AppImages.product3,
                ),
              ),
            ),
          ),

          // AppBar
          const AppAppBar(
            showBackArrow: true,
            actions: [
              CircularIcon(
                icon: Iconsax.heart5,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
