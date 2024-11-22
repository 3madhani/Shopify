import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../../core/utils/constants/sizes.dart';
import '../../../../../../core/utils/constants/text_string.dart';
import '../verify_email_screen.dart';
import 'term_and_conditions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // phoneNumber
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // password
          TextFormField(
            expands: false,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: AppTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),

          // terms & conditions
          const TermsAndConditionsCheckbox(),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(AppTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
