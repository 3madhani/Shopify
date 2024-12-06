import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopify/core/utils/exceptions/format_exceptions.dart';
import 'package:shopify/core/utils/exceptions/platform_exceptions.dart';

import '../../../../../core/utils/exceptions/firebase_auth_exceptions.dart';
import '../../models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw AppFirebaseAuthExceptions(e.code).message;
    } on FormatException catch (_) {
      throw const AppFormatExceptions();
    } on PlatformException catch (e) {
      throw AppPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong, please try again';
    }
  }
}
