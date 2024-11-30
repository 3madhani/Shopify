import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(AppSizes.sm),
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  100,
                ),
                color: backgroundColor ??
                    (dark ? AppColors.black : AppColors.white),
              ),
              child: Center(
                  child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: dark ? AppColors.white : AppColors.black,
              )),
            ),
            // Text
            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                textAlign: TextAlign.center,
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: textColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
