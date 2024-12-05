import 'package:flutter/material.dart';
import 'package:shopify/core/common/widgets/layouts/grid_layout.dart';
import 'package:shopify/core/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:shopify/core/common/widgets/texts/section_heading.dart';

import '../../../../../../core/common/widgets/brands/brand_show_cases.dart';
import '../../../../../../core/utils/constants/image_string.dart';
import '../../../../../../core/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                const BrandShowCases(
                  images: [
                    AppImages.product1,
                    AppImages.product2,
                    AppImages.product3
                  ],
                ),
                // products
                AppSectionHeading(
                  title: 'You might also like',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductCardVertical(),
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
              ],
            ),
          ),
        ]);
  }
}
