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
    apiKey: 'AIzaSyB0hx4DyVCH5UT5c9xhTVUfXobpHd1pBk8',
    appId: '1:675784436923:web:31c8a2943774f0c2960d9e',
    messagingSenderId: '675784436923',
    projectId: 'do-19b8b',
    authDomain: 'do-19b8b.firebaseapp.com',
    storageBucket: 'do-19b8b.appspot.com',
    measurementId: 'G-530LHDH7WQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB4xj66zdEYM_vmfYGLZQRAfr5F3AB7zLI',
    appId: '1:675784436923:android:57e8e8687ac77d2c960d9e',
    messagingSenderId: '675784436923',
    projectId: 'do-19b8b',
    storageBucket: 'do-19b8b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCwy7O-X5vx1v8w8ILHdasPv_wUnprIyg8',
    appId: '1:675784436923:ios:68dde546bda32de7960d9e',
    messagingSenderId: '675784436923',
    projectId: 'do-19b8b',
    storageBucket: 'do-19b8b.appspot.com',
    iosBundleId: 'com.example.dnegrao',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCwy7O-X5vx1v8w8ILHdasPv_wUnprIyg8',
    appId: '1:675784436923:ios:3807d41030c31571960d9e',
    messagingSenderId: '675784436923',
    projectId: 'do-19b8b',
    storageBucket: 'do-19b8b.appspot.com',
    iosBundleId: 'com.example.dnegrao.RunnerTests',
  );
}