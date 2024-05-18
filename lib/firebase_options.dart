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
    apiKey: 'AIzaSyBfI0Hm3kP2zMC5L4mssZ62BczVpudxwok',
    appId: '1:227583465981:web:6fc52e680f36a0145e2194',
    messagingSenderId: '227583465981',
    projectId: 'futurehire-c04c6',
    authDomain: 'futurehire-c04c6.firebaseapp.com',
    databaseURL: 'https://futurehire-c04c6-default-rtdb.firebaseio.com',
    storageBucket: 'futurehire-c04c6.appspot.com',
    measurementId: 'G-43QRVEZZZN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAgq0yyx8tsRFwXb52WQXdYtSZIkqdS7Mg',
    appId: '1:227583465981:android:9c482df9282791775e2194',
    messagingSenderId: '227583465981',
    projectId: 'futurehire-c04c6',
    databaseURL: 'https://futurehire-c04c6-default-rtdb.firebaseio.com',
    storageBucket: 'futurehire-c04c6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClJNSDITurqV9Em08JwDPc76zu5e7432A',
    appId: '1:227583465981:ios:2c536fb13b14ecd75e2194',
    messagingSenderId: '227583465981',
    projectId: 'futurehire-c04c6',
    databaseURL: 'https://futurehire-c04c6-default-rtdb.firebaseio.com',
    storageBucket: 'futurehire-c04c6.appspot.com',
    iosBundleId: 'com.example.futurehire',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClJNSDITurqV9Em08JwDPc76zu5e7432A',
    appId: '1:227583465981:ios:c3df4672cbb57f715e2194',
    messagingSenderId: '227583465981',
    projectId: 'futurehire-c04c6',
    databaseURL: 'https://futurehire-c04c6-default-rtdb.firebaseio.com',
    storageBucket: 'futurehire-c04c6.appspot.com',
    iosBundleId: 'com.example.futurehire.RunnerTests',
  );
}
