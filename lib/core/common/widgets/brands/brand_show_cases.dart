import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class BrandShowCases extends StatelessWidget {
  const BrandShowCases({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      shadowBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(
        bottom: AppSizes.spaceBtwItems,
      ),
      child: Column(
        children: [
          // brand card
          const BrandCard(
            showBorder: false,
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems,
          ),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: dark ? AppColors.darkerGrey : AppColors.light,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        padding: const EdgeInsets.all(AppSizes.sm),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
