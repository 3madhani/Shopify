import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify/features/authentication/presentation/controllers/sign_up/sign_up_controller.dart';

import '../../../../../../core/utils/constants/colors.dart';
import '../../../../../../core/utils/constants/sizes.dart';
import '../../../../../../core/utils/constants/text_string.dart';
import '../../../../../../core/utils/helpers/helper_functions.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  const TermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.instance;
    final dark = AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(() => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.toggle())),
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "${AppTexts.iAgreeTo} ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: AppTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? AppColors.white : AppColors.primary,
                    ),
              ),
              TextSpan(
                text: " ${AppTexts.and} ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: AppTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? AppColors.white : AppColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
