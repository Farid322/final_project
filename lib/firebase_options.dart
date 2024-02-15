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
    apiKey: 'AIzaSyBUSS40amuWNjSfW-QBWKWrLRLH1QuuUhg',
    appId: '1:543868082257:web:e6817e490c873d0c158070',
    messagingSenderId: '543868082257',
    projectId: 'final-project-760c2',
    authDomain: 'final-project-760c2.firebaseapp.com',
    storageBucket: 'final-project-760c2.appspot.com',
    measurementId: 'G-P143MRWFB0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgpQrqq7pOFxlu36m3xtUnfEJnK0t9Jao',
    appId: '1:543868082257:android:a5e040643215e017158070',
    messagingSenderId: '543868082257',
    projectId: 'final-project-760c2',
    storageBucket: 'final-project-760c2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBC9fa6PcblbGsKAwWj26tWwY00EAn0NsI',
    appId: '1:543868082257:ios:0e18d83df05660de158070',
    messagingSenderId: '543868082257',
    projectId: 'final-project-760c2',
    storageBucket: 'final-project-760c2.appspot.com',
    iosBundleId: 'com.example.graduationProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBC9fa6PcblbGsKAwWj26tWwY00EAn0NsI',
    appId: '1:543868082257:ios:df9f6ee424afd671158070',
    messagingSenderId: '543868082257',
    projectId: 'final-project-760c2',
    storageBucket: 'final-project-760c2.appspot.com',
    iosBundleId: 'com.example.graduationProject.RunnerTests',
  );
}
