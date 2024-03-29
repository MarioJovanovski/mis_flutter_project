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
    apiKey: 'AIzaSyBBupT0gUVqNNu_Oy-TxkwVgEFsXvlXQvA',
    appId: '1:996604788051:web:f1710a927e009096e0f5a6',
    messagingSenderId: '996604788051',
    projectId: 'flutter-dom2',
    authDomain: 'flutter-dom2.firebaseapp.com',
    storageBucket: 'flutter-dom2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5ZrfvgvTYl9BgrHY7-e4cbtcIFIaaWK8',
    appId: '1:996604788051:android:e77b4af0c2aebf03e0f5a6',
    messagingSenderId: '996604788051',
    projectId: 'flutter-dom2',
    storageBucket: 'flutter-dom2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDrYEv5YvJEx5myMqqU-XtVb1nVSuBAF30',
    appId: '1:996604788051:ios:5d35a2e060f8f49fe0f5a6',
    messagingSenderId: '996604788051',
    projectId: 'flutter-dom2',
    storageBucket: 'flutter-dom2.appspot.com',
    iosBundleId: 'com.example.flutterDom2',
  );
}
