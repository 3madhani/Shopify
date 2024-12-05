import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/sizes.dart';
import '../../../../../../core/utils/constants/text_string.dart';
import '../../../../../../core/utils/device/device_utility.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text(
          AppTexts.skip,
        ),
      ),
    );
  }
}
