import 'package:flutter/material.dart';

import '../../../../../core/common/widgets/app_bar/app_bar.dart';
import '../../../../../core/common/widgets/products/sortable/sortable_products.dart';
import '../../../../../core/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(
          'Popular Products',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: SortableProducts(),
      ),
    );
  }
}

