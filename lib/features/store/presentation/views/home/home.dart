import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/core/utils/constants/colors.dart';
import 'package:t_store/core/utils/constants/sizes.dart';
import 'package:t_store/core/utils/device/device_utility.dart';
import 'package:t_store/core/utils/helpers/helper_functions.dart';
import '../../../../../core/common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../../core/common/widgets/custom_shapes/containers/search_container.dart';
import 'widgets/home_app_bar.dart';

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
                        AppSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                      ],
                    ),
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

