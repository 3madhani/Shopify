import 'package:flutter/material.dart';
import 'package:shopify/core/common/widgets/chips/choice_chip.dart';
import 'package:shopify/core/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopify/core/common/widgets/texts/product_price_text.dart';
import 'package:shopify/core/common/widgets/texts/product_title_text.dart';
import 'package:shopify/core/common/widgets/texts/section_heading.dart';

import '../../../../../../core/utils/constants/colors.dart';
import '../../../../../../core/utils/constants/sizes.dart';
import '../../../../../../core/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // section attributes
        RoundedContainer(
          padding: const EdgeInsets.all(AppSizes.md),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            children: [
              // title
              Row(
                children: [
                  const AppSectionHeading(
                      title: 'Variations', showActionButton: false),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProductTitleText(title: 'Price', smallSize: true),
                      Row(
                        children: [
                          // actual price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: AppSizes.spaceBtwItems,
                          ),

                          // sole price
                          const ProductPriceText(price: '20'),
                        ],
                      ),

                      // stock
                      Row(
                        children: [
                          const ProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  )
                ],
              ),

              // variations description
              const ProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(
                    text: 'Green', selected: false, onSelected: (value) {}),
                AppChoiceChip(
                    text: 'Yellow', selected: true, onSelected: (value) {}),
                AppChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          children: [
            const AppSectionHeading(title: 'Sizes', showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 6,
              children: [
                AppChoiceChip(
                    text: 'EU 42', selected: true, onSelected: (value) {}),
                AppChoiceChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                AppChoiceChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
                AppChoiceChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}
