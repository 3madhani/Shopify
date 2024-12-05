import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/common/widgets/app_bar/app_bar.dart';
import '../../../../../core/common/widgets/brands/brand_card.dart';
import '../../../../../core/common/widgets/layouts/grid_layout.dart';
import '../../../../../core/common/widgets/texts/section_heading.dart';
import '../../../../../core/utils/constants/sizes.dart';
import 'brand_products.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
          title:
              Text('Brand', style: Theme.of(context).textTheme.headlineMedium),
          showBackArrow: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // heading
            const AppSectionHeading(
              title: 'Brands',
              showActionButton: false,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),

            // Brands
            GridLayout(
              mainAxisExtent: 80,
              itemCount: 10,
              itemBuilder: (_, index) => BrandCard(
                showBorder: true,
                onTap: () => Get.to(() => const BrandProducts()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
