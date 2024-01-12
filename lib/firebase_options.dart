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
    apiKey: 'AIzaSyAQuJIWezOjpVi75Q6eNziIDnMe_bk4CS4',
    appId: '1:168942969498:web:c8456ddfec7abd86447523',
    messagingSenderId: '168942969498',
    projectId: 'mindwell-808d4',
    authDomain: 'mindwell-808d4.firebaseapp.com',
    databaseURL: 'https://mindwell-808d4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'mindwell-808d4.appspot.com',
    measurementId: 'G-3BDKKTVNPL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCo3OEBIig8QDZ-9HAZXsOHFDeLXQDAgKA',
    appId: '1:168942969498:android:c52815e6c3f1c0a0447523',
    messagingSenderId: '168942969498',
    projectId: 'mindwell-808d4',
    databaseURL: 'https://mindwell-808d4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'mindwell-808d4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGD9j-j4C1Z_kHHQU9GZlBgmIp-Ve0qWo',
    appId: '1:168942969498:ios:263f25fc65167036447523',
    messagingSenderId: '168942969498',
    projectId: 'mindwell-808d4',
    databaseURL: 'https://mindwell-808d4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'mindwell-808d4.appspot.com',
    iosClientId: '168942969498-22267dbrcos60lijkgbn8u99oaj204q5.apps.googleusercontent.com',
    iosBundleId: 'com.example.mindwell',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGD9j-j4C1Z_kHHQU9GZlBgmIp-Ve0qWo',
    appId: '1:168942969498:ios:d6085cf831121f3e447523',
    messagingSenderId: '168942969498',
    projectId: 'mindwell-808d4',
    databaseURL: 'https://mindwell-808d4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'mindwell-808d4.appspot.com',
    iosClientId: '168942969498-glpne8hpg31u7qlv62e15c01tof5k2nc.apps.googleusercontent.com',
    iosBundleId: 'com.example.mindwell.RunnerTests',
  );
}
