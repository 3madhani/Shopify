import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify/features/shop/presentation/views/sub_category/sub_categories.dart';
import '../../../../../../core/common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../../core/utils/constants/image_string.dart';

class AppHomeCategories extends StatelessWidget {
  const AppHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: AppImages.shoesIcon,
            title: 'Shoes',
            onTap: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
