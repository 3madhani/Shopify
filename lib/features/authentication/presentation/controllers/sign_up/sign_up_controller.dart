import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify/core/utils/constants/image_string.dart';
import 'package:shopify/core/utils/popups/full_screen_loader.dart';
import 'package:shopify/features/authentication/data/repo/authentication/auth_repo.dart';
import 'package:shopify/features/authentication/presentation/views/signup/verify_email_screen.dart';

import '../../../../../core/utils/network/network_manager.dart';
import '../../../../../core/utils/popups/loaders.dart';
import '../../../data/models/user_model.dart';
import '../../../data/repo/user/user_repo.dart';

class SignUpController extends GetxController {
  static SignUpController instance = Get.find();

  // variables
  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // signup
  void signup() async {
    try {
      // start loading
      FullScreenLoader.openLoadingDialog(
          'We are processing your information...',
          AppImages.staticSuccessIllustration);

      // check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // form validation
      if (!signupFormKey.currentState!.validate()) return;

      // privacy policy
      if (!privacyPolicy.value) {
        Loaders.warningSnackbar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create an account, you must read and accept the Privacy Policy & Terms of Use.',
        );
        return;
      }

      // register user
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // save user data
      final newUser = UserModel(
        id: userCredential.user!.uid,
        email: email.text.trim(),
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profileImage: '',
      );

      final userRepo = Get.put(UserRepository());

      await userRepo.saveUserRecord(newUser);
      // show success
      Loaders.successSnackbar(
        title: 'Congratulations!',
        message:
            'Your account has been created successfully Verify your email to continue.',
      );

      // move to verification
      Get.to(
        () => VerifyEmailScreen(email: email.text.trim()),
      );
    } catch (e) {
      // show error
      Loaders.errorSnackbar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // remove loading
      FullScreenLoader.stopLoader();
    }
  }
}
