import 'package:flutter/material.dart';
import 'package:shopify/core/common/widgets/images/rounded_image.dart';

import '../../../../../core/common/widgets/app_bar/app_bar.dart';
import '../../../../../core/common/widgets/products/product_cards/product_card_horizontal.dart';
import '../../../../../core/common/widgets/texts/section_heading.dart';
import '../../../../../core/utils/constants/image_string.dart';
import '../../../../../core/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Banner
            const RoundedImage(
                width: double.infinity, imageUrl: AppImages.promoBanner6),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // sub categories
            Column(
              children: [
                // heading
                AppSectionHeading(title: 'Sports shirts', onPressed: () {}),
                const SizedBox(height: AppSizes.spaceBtwItems / 2),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: AppSizes.spaceBtwItems),
                      itemBuilder: (context, index) =>
                          const ProductCardHorizontal()),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
