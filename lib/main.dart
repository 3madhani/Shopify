import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopify/app.dart';

import 'features/authentication/data/repo/authentication/auth_repo.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // add widget banding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // init local storage
  await GetStorage.init();


  // init payment methods
  // await native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // init firebase

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value)=> Get.put(AuthenticationRepository()),
  );


  // init auth

  runApp(const MainApp());
}
