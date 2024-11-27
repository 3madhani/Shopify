import 'package:flutter/material.dart';
import 'package:t_store/core/utils/constants/colors.dart';
import 'package:t_store/core/utils/constants/image_string.dart';
import 'package:t_store/core/utils/constants/sizes.dart';
import '../../../../../core/common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../../core/common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../../core/common/widgets/images/rounded_image.dart';
import '../../../../../core/common/widgets/texts/section_heading.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
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
                  )
                ],
              ),
            ),
            // body
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultSpace),
              child: RoundedImage(
                imageUrl: AppImages.bannerImage1,
              ),
            )
          ],
        ),
      ),
    );
  }
}

