// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAoBwgQGLbBt-ZVUA7k0qa0Bz-g1--KbcA',
    appId: '1:1017274180696:web:4a04fd39d368d38428962d',
    messagingSenderId: '1017274180696',
    projectId: 'images-73a0d',
    authDomain: 'images-73a0d.firebaseapp.com',
    storageBucket: 'images-73a0d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAEINzVEi_Xn9Vg5nqhFQEn9HxOI4Ynwyg',
    appId: '1:1017274180696:android:90d812962e2d2c1728962d',
    messagingSenderId: '1017274180696',
    projectId: 'images-73a0d',
    storageBucket: 'images-73a0d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBx_Zt2JcHfIlgq10M-SGvv0I0WJQNY2AQ',
    appId: '1:1017274180696:ios:06eea7f9a7d9225128962d',
    messagingSenderId: '1017274180696',
    projectId: 'images-73a0d',
    storageBucket: 'images-73a0d.appspot.com',
    iosClientId: '1017274180696-6f73f2mdfumkk7sn20epare1sporvlud.apps.googleusercontent.com',
    iosBundleId: 'com.example.cherusCameraApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBx_Zt2JcHfIlgq10M-SGvv0I0WJQNY2AQ',
    appId: '1:1017274180696:ios:06eea7f9a7d9225128962d',
    messagingSenderId: '1017274180696',
    projectId: 'images-73a0d',
    storageBucket: 'images-73a0d.appspot.com',
    iosClientId: '1017274180696-6f73f2mdfumkk7sn20epare1sporvlud.apps.googleusercontent.com',
    iosBundleId: 'com.example.cherusCameraApp',
  );
}