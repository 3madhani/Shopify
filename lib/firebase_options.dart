// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAWLFyqEkXha7OjesG-OvoMOFMo34MSAh4',
    appId: '1:987462243314:web:58eef4a95ea56a6bb2516b',
    messagingSenderId: '987462243314',
    projectId: 'arrhythmia-1fc3a',
    authDomain: 'arrhythmia-1fc3a.firebaseapp.com',
    storageBucket: 'arrhythmia-1fc3a.appspot.com',
    measurementId: 'G-4L61FMC45S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDA85AYkrL1okTjtM2b_WQI5J1CenReaQg',
    appId: '1:987462243314:android:ee06bb9bd89b3ea3b2516b',
    messagingSenderId: '987462243314',
    projectId: 'arrhythmia-1fc3a',
    storageBucket: 'arrhythmia-1fc3a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvqW9xkGcKfypLcb5u0kQXcD0Pu7qImy8',
    appId: '1:987462243314:ios:b2749b4814e6d0cfb2516b',
    messagingSenderId: '987462243314',
    projectId: 'arrhythmia-1fc3a',
    storageBucket: 'arrhythmia-1fc3a.appspot.com',
    androidClientId: '987462243314-5ongcmj140uqm5lapkocrq36iiciq7rb.apps.googleusercontent.com',
    iosClientId: '987462243314-4gndv53mfaah5h9fpjrkvjlqs70ocgio.apps.googleusercontent.com',
    iosBundleId: 'com.example.shopify',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvqW9xkGcKfypLcb5u0kQXcD0Pu7qImy8',
    appId: '1:987462243314:ios:b2749b4814e6d0cfb2516b',
    messagingSenderId: '987462243314',
    projectId: 'arrhythmia-1fc3a',
    storageBucket: 'arrhythmia-1fc3a.appspot.com',
    androidClientId: '987462243314-5ongcmj140uqm5lapkocrq36iiciq7rb.apps.googleusercontent.com',
    iosClientId: '987462243314-4gndv53mfaah5h9fpjrkvjlqs70ocgio.apps.googleusercontent.com',
    iosBundleId: 'com.example.shopify',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAWLFyqEkXha7OjesG-OvoMOFMo34MSAh4',
    appId: '1:987462243314:web:0cf0ccbc433e4e5eb2516b',
    messagingSenderId: '987462243314',
    projectId: 'arrhythmia-1fc3a',
    authDomain: 'arrhythmia-1fc3a.firebaseapp.com',
    storageBucket: 'arrhythmia-1fc3a.appspot.com',
    measurementId: 'G-HHP1ELYQ4R',
  );
}