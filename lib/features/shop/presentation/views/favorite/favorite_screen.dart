import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/core/common/widgets/app_bar/app_bar.dart';
import 'package:t_store/core/common/widgets/icons/circular_icon.dart';
import 'package:t_store/core/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/core/utils/constants/sizes.dart';
import 'package:t_store/features/shop/presentation/views/home/home.dart';

import '../../../../../core/common/widgets/products/product_cards/product_card_vertical.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()))
        ],
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => const ProductCardVertical(),),
            ],
          )),
    );
  }
}
