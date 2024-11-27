import 'package:flutter/material.dart';
import 'package:t_store/core/utils/constants/colors.dart';
import 'package:t_store/core/utils/constants/sizes.dart';
import '../../../../../core/common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../../core/common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../../core/common/widgets/texts/section_heading.dart';
import 'widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  const HomeAppBar(),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  // SearchBar
                  const SearchContainer(
                    text: 'Search in Store',
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppSizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        // Heading
                        const AppSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        // Categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (_, index) {
                              return Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(AppSizes.sm),
                                    width: 56,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        100,
                                      ),
                                      color: AppColors.white,
                                    ),
                                    child: const Center(
                                      child: Image(
                                        image: AssetImage(''),
                                        fit: BoxFit.cover,
                                        color: AppColors.dark,
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        )
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
