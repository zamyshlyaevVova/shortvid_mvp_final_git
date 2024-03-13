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
    apiKey: 'AIzaSyB26tRgFDeX5TZJjI5Y4RLnzy0kJo1ZZMU',
    appId: '1:225279844734:web:49b92f0a894b432358932f',
    messagingSenderId: '225279844734',
    projectId: 'shortvid-mvp-final',
    authDomain: 'shortvid-mvp-final.firebaseapp.com',
    storageBucket: 'shortvid-mvp-final.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAxV-CgJFmK5Y46pN0L8stoWunpqNe3oM',
    appId: '1:225279844734:android:8ebce9310e8c612158932f',
    messagingSenderId: '225279844734',
    projectId: 'shortvid-mvp-final',
    storageBucket: 'shortvid-mvp-final.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsMk8J8dAX2-xskmMJkqRszkAgydu4zUc',
    appId: '1:225279844734:ios:c12dbb19a11cc61058932f',
    messagingSenderId: '225279844734',
    projectId: 'shortvid-mvp-final',
    storageBucket: 'shortvid-mvp-final.appspot.com',
    iosBundleId: 'com.example.shortvidMvpFinal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCsMk8J8dAX2-xskmMJkqRszkAgydu4zUc',
    appId: '1:225279844734:ios:a43eb63c3da97e0a58932f',
    messagingSenderId: '225279844734',
    projectId: 'shortvid-mvp-final',
    storageBucket: 'shortvid-mvp-final.appspot.com',
    iosBundleId: 'com.example.shortvidMvpFinal.RunnerTests',
  );
}
