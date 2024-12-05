import 'package:flutter/material.dart';

import '../../../../../core/common/widgets/app_bar/app_bar.dart';
import '../../../../../core/common/widgets/brands/brand_card.dart';
import '../../../../../core/common/widgets/products/sortable/sortable_products.dart';
import '../../../../../core/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
          title: Text(
        'Nike',
        style: Theme.of(context).textTheme.headlineMedium,
      )),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Brand details
            BrandCard(showBorder: true),
            SizedBox(height: AppSizes.spaceBtwSections),

            SortableProducts()
            //
          ],
        ),
      ),
    );
  }
}
