import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:shopify/core/common/widgets/texts/section_heading.dart';
import 'package:shopify/core/utils/constants/sizes.dart';
import 'package:shopify/features/shop/presentation/views/product_details/widgets/bottom_add_cart.dart';
import 'package:shopify/features/shop/presentation/views/product_details/widgets/product_attributes.dart';
import 'package:shopify/features/shop/presentation/views/product_details/widgets/product_meta_data.dart';

import '../product_reviews/product_reviews.dart';
import 'widgets/product_detail_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image
            const ProductImageSlider(),

            // product details
            Padding(
              padding: const EdgeInsets.only(
                  right: AppSizes.defaultSpace,
                  left: AppSizes.defaultSpace,
                  bottom: AppSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & share button
                  const RatingAndShare(),

                  // product meta data
                  const ProductMetaData(),

                  // Attributes
                  const ProductAttributes(),

                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),

                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // description
                  const AppSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve less Vest. There are More Things That can be added in this Product',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // reviews
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppSectionHeading(
                          title: 'Reviews (199)', showActionButton: false),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(Iconsax.arrow_right_3, size: 18)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
