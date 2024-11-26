import 'package:flutter/material.dart';
import 'package:t_store/core/common/widgets/app_bar/app_bar.dart';
import 'package:t_store/core/utils/constants/text_string.dart';
import '../../../../../core/common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../../core/common/widgets/products_cart/cart_menu_icon.dart';
import '../../../../../core/utils/constants/colors.dart';

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
                  AppAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppTexts.homeAppBarTitle,
                          style: Theme.of(context).textTheme.labelMedium!.apply(
                                color: AppColors.grey,
                              ),
                        ),
                        Text(
                          AppTexts.homeAppBarSubTitle,
                          style:
                              Theme.of(context).textTheme.headlineSmall!.apply(
                                    color: AppColors.white,
                                  ),
                        )
                      ],
                    ),
                    actions: [
                      CartCounterIcon(
                        onPressed: () {},
                        iconColor: AppColors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

