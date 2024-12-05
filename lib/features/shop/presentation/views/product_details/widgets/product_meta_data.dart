import 'package:flutter/material.dart';
import 'package:shopify/core/common/widgets/images/circular_image.dart';
import 'package:shopify/core/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:shopify/core/common/widgets/texts/product_price_text.dart';
import 'package:shopify/core/common/widgets/texts/product_title_text.dart';
import 'package:shopify/core/utils/constants/enums.dart';
import 'package:shopify/core/utils/constants/image_string.dart';

import '../../../../../../core/common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../../core/utils/constants/colors.dart';
import '../../../../../../core/utils/constants/sizes.dart';
import '../../../../../../core/utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // price & sole price
        Row(
          children: [
            RoundedContainer(
              borderRadius: AppSizes.sm,
              backgroundColor: AppColors.secondary.withOpacity(.8),
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.sm,
                vertical: AppSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: AppColors.black,
                    ),
              ),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),

            // price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            const ProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),

        // Title
        const ProductTitleText(title: 'Yellow Nike Sneakers'),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),

        // stack status
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            Text('In Stack', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),

        // brand
        Row(
          children: [
            CircularImage(
              image: AppImages.shoesIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? AppColors.white : AppColors.black,
            ),
            const BrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
