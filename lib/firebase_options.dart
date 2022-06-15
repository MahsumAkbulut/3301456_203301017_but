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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA55tH_kU3g_fNmmct60x5GgNwCB3GcgCY',
    appId: '1:582262920430:web:097fa2daccc1acbad5cfff',
    messagingSenderId: '582262920430',
    projectId: 'olanburcapp',
    authDomain: 'olanburcapp.firebaseapp.com',
    storageBucket: 'olanburcapp.appspot.com',
    measurementId: 'G-N6Y4F10MKD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCjzNiOnWOl8uhBafFXtIqQ5RlBEiggapE',
    appId: '1:582262920430:android:400aac8ddfb3eb20d5cfff',
    messagingSenderId: '582262920430',
    projectId: 'olanburcapp',
    storageBucket: 'olanburcapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5A9PS5UHjaApDHyuq3vdq8TzJJ84_Stc',
    appId: '1:582262920430:ios:a093b843846c5743d5cfff',
    messagingSenderId: '582262920430',
    projectId: 'olanburcapp',
    storageBucket: 'olanburcapp.appspot.com',
    iosClientId: '582262920430-tcit8f4lfl1dkvnatskbojtuu106hhnm.apps.googleusercontent.com',
    iosBundleId: 'com.example.sonproje1',
  );
}
