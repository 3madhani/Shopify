import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/core/common/styles/spacing_styles.dart';
import 'package:t_store/core/common/widgets/form_divider.dart';
import 'package:t_store/core/common/widgets/social_buttons.dart';
import 'package:t_store/core/utils/constants/sizes.dart';
import 'package:t_store/core/utils/constants/text_string.dart';
import 'package:t_store/features/authentication/presentation/views/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/presentation/views/login/widgets/login_header.dart';

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
