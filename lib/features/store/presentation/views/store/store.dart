import 'package:flutter/material.dart';
import 'package:t_store/core/common/widgets/app_bar/app_bar.dart';
import 'package:t_store/core/common/widgets/app_bar/tab_bar.dart';
import 'package:t_store/core/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/core/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/core/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/core/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/core/common/widgets/texts/section_heading.dart';
import 'package:t_store/core/utils/constants/sizes.dart';
import '../../../../../core/common/widgets/products/product_cards/brand_card.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
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
                          return const BrandCard(
                            showBorder: false,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                // tabs
                bottom: const AppTabBar(
                  tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(AppSizes.defaultSpace),
                child:Column(
                  children: [
                    RoundedContainer(
                      shadowBorder: true,
                      borderColor: AppColors.darkGrey,
                      backgroundColor: Colors.transparent,
                      margin: EdgeInsets.only(
                        bottom: AppSizes.spaceBtwItems,
                      ),
                      child: Column(
                        children: [

                          // brand card
                          BrandCard(showBorder: false,),
                        ],
                      ),
                    )
                  ],
                ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
