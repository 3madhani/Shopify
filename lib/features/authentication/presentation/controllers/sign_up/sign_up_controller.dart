import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify/core/utils/constants/image_string.dart';
import 'package:shopify/core/utils/popups/full_screen_loader.dart';

import '../../../../../core/utils/network/network_manager.dart';
import '../../../../../core/utils/popups/loaders.dart';

class SignUpController extends GetxController {
  static SignUpController instance = Get.find();

  // variables
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // signup
  Future<void> signup() async {
    try {
      // start loading
      FullScreenLoader.openLoadingDialog(
          'We are processing your information...',
          AppImages.staticSuccessIllustration);

      // check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoader();
        return;
      }

      // form validation
      if (!signupFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoader();
        return;
      }

      // privacy policy

      // register user

      // save user data

      // show success

      // move to verification
    } catch (e) {
      // show error
      Loaders.errorSnackbar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // remove loading
      FullScreenLoader.stopLoader();
    }
  }
}
