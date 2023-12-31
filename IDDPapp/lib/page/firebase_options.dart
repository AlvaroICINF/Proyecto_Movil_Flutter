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
    apiKey: 'AIzaSyBjF9XapEHNUA98W9zDMxOfb30mPaHUE04',
    appId: '1:975281666061:web:ffac3a4f5d4793e270bd44',
    messagingSenderId: '975281666061',
    projectId: 'proyecto-iddp',
    authDomain: 'proyecto-iddp.firebaseapp.com',
    storageBucket: 'proyecto-iddp.appspot.com',
    measurementId: 'G-Z22H62FQSQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCgJy-dJbIzJNBHX5zmwGzBWS3fvS7094Y',
    appId: '1:975281666061:android:5f7b61e38967074a70bd44',
    messagingSenderId: '975281666061',
    projectId: 'proyecto-iddp',
    storageBucket: 'proyecto-iddp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4RdA8m_RKnmnVdXMq_AP19qAiNsDaIOk',
    appId: '1:975281666061:ios:db224326bc26a86770bd44',
    messagingSenderId: '975281666061',
    projectId: 'proyecto-iddp',
    storageBucket: 'proyecto-iddp.appspot.com',
    iosBundleId: 'com.example.proyectoIddp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD4RdA8m_RKnmnVdXMq_AP19qAiNsDaIOk',
    appId: '1:975281666061:ios:df732972a646fe0270bd44',
    messagingSenderId: '975281666061',
    projectId: 'proyecto-iddp',
    storageBucket: 'proyecto-iddp.appspot.com',
    iosBundleId: 'com.example.proyectoIddp.RunnerTests',
  );
}
