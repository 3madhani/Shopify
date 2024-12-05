import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../../core/common/widgets/login_signup/form_divider.dart';
import '../../../../../core/common/widgets/login_signup/social_buttons.dart';
import '../../../../../core/utils/constants/sizes.dart';
import '../../../../../core/utils/constants/text_string.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          AppSizes.defaultSpace,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            Text(
              AppTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            // form
            const SignUpForm(),
            const SizedBox(height: AppSizes.spaceBtwSections),
            // divider
            FormDivider(dividerText: AppTexts.orSignupWith.capitalize!),
            const SizedBox(height: AppSizes.spaceBtwSections),
            // social buttons
            const SocialButtons(),
          ],
        ),
      ),
    );
  }
}
