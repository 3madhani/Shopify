import 'package:flutter/material.dart';
import 'package:t_store/core/common/widgets/app_bar/app_bar.dart';
import 'package:t_store/core/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/core/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/core/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/core/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/core/common/widgets/texts/section_heading.dart';
import 'package:t_store/core/utils/constants/enums.dart';
import 'package:t_store/core/utils/constants/image_string.dart';
import 'package:t_store/core/utils/constants/sizes.dart';

import '../../../../../core/common/widgets/images/circular_image.dart';
import '../../../../../core/common/widgets/texts/brand_title_with_verified_icon.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CartCounterIcon(
            onPressed: () {},
          ),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? AppColors.black : AppColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // search bar
                      const SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),
                      const SearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),

                      // features brands
                      AppSectionHeading(
                        title: 'Features Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwItems / 1.5,
                      ),
                      GridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: RoundedContainer(
                              padding: const EdgeInsets.all(AppSizes.md),
                              shadowBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  // icon
                                  Flexible(
                                    child: CircularImage(
                                      isNetworkImage: false,
                                      image: AppImages.cosmeticsIcon,
                                      backgroundColor: Colors.transparent,
                                      overlayColor: dark
                                          ? AppColors.white
                                          : AppColors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: AppSizes.spaceBtwItems / 2,
                                  ),
                                  // Text
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const BrandTitleWithVerifiedIcon(
                                          title: 'Nike',
                                          brandTextSize: TextSizes.large,
                                        ),
                                        Text(
                                          '256 Products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
