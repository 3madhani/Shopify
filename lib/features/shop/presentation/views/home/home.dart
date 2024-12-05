import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify/core/common/widgets/layouts/grid_layout.dart';
import 'package:shopify/core/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:shopify/core/utils/constants/colors.dart';
import 'package:shopify/core/utils/constants/image_string.dart';
import 'package:shopify/core/utils/constants/sizes.dart';
import 'package:shopify/features/shop/presentation/views/all_products/all_products.dart';
import '../../../../../core/common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../../core/common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../../core/common/widgets/texts/section_heading.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  HomeAppBar(),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  // SearchBar
                  SearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  // Categories
                  Padding(
                    padding: EdgeInsets.only(
                      left: AppSizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        // Heading
                        AppSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: AppColors.white,
                        ),
                        SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        // Categories
                        AppHomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            // body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      AppImages.promoBanner1,
                      AppImages.promoBanner2,
                      AppImages.promoBanner3,
                      AppImages.promoBanner4,
                      AppImages.promoBanner5,
                      AppImages.promoBanner6,
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  // Heading
                  AppSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProductsScreen()),
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),

                  // popular products
                  GridLayout(
                      itemCount: 8,
                      itemBuilder: (_, index) => const ProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
