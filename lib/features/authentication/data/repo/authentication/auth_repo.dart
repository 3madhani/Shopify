import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopify/core/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:shopify/core/utils/exceptions/firebase_exceptions.dart';
import 'package:shopify/core/utils/exceptions/format_exceptions.dart';
import 'package:shopify/core/utils/exceptions/platform_exceptions.dart';
import 'package:shopify/features/authentication/presentation/views/login/login_screen.dart';
import 'package:shopify/features/authentication/presentation/views/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // functions
  @override
  void onReady() {
    // remove the native splash screen
    FlutterNativeSplash.remove();
    // redirect to appropriate screen
    screenRedirect();
  }

  Future<void> screenRedirect() async {
    deviceStorage.writeIfNull('IsFirstTime', true);

    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnboardingScreen());
  }

  // signin

  // register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthExceptions(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseExceptions(e.code).message;
    } on FormatException catch (_) {
      throw const AppFormatExceptions();
    } on PlatformException catch (e) {
      throw AppPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong, please try again';
    }
  }
}
