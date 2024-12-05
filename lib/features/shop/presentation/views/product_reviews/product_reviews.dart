import 'package:flutter/material.dart';
import 'package:shopify/core/common/widgets/app_bar/app_bar.dart';
import 'package:shopify/features/shop/presentation/views/product_reviews/widgets/user_review_card.dart';

import '../../../../../core/common/widgets/products/ratings/rating_indicator.dart';
import '../../../../../core/utils/constants/sizes.dart';
import 'widgets/progress_indicator_and_rating.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(
          title: Text('Reviews & Ratings'), showBackArrow: true),

      // body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                "Rating and Reviews are verified and are from people who use the sme type of device that you are using."),
            const SizedBox(height: AppSizes.spaceBtwItems),

            // overall rating
            const OverallProductRating(),
            const AppRatingBarIndicator(rating: 3.5),
            Text('12,655', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // user reviews list
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
