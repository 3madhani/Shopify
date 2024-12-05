import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify/core/common/styles/spacing_styles.dart';
import 'package:shopify/core/common/widgets/login_signup/form_divider.dart';
import 'package:shopify/core/common/widgets/login_signup/social_buttons.dart';
import 'package:shopify/core/utils/constants/sizes.dart';
import 'package:shopify/core/utils/constants/text_string.dart';
import 'package:shopify/features/authentication/presentation/views/login/widgets/login_form.dart';
import 'package:shopify/features/authentication/presentation/views/login/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(children: [
            // Logo, Title & Sub-Title
            const LoginHeader(),
            // Form
            const LoginForm(),
            // Divider
            FormDivider(dividerText: AppTexts.orSigninWith.capitalize!),
            const SizedBox(height: AppSizes.spaceBtwSections),
            // Footer
            const SocialButtons(),
          ]),
        ),
      ),
    );
  }
}
