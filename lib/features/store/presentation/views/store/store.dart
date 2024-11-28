import 'package:flutter/material.dart';
import 'package:t_store/core/common/widgets/app_bar/app_bar.dart';
import 'package:t_store/core/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/core/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/core/common/widgets/texts/section_heading.dart';
import 'package:t_store/core/utils/constants/sizes.dart';

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
