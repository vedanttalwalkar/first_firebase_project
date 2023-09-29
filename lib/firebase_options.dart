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
    apiKey: 'AIzaSyAGw1SGhVAPcS3nbXHxSzlNRu3gDmbxp_Y',
    appId: '1:130443781601:web:18ee33feadd1b7dcb31ea0',
    messagingSenderId: '130443781601',
    projectId: 'easybuy-c1efb',
    authDomain: 'easybuy-c1efb.firebaseapp.com',
    storageBucket: 'easybuy-c1efb.appspot.com',
    measurementId: 'G-QPTN4FS2HK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZw0aJ6KL1rjyTE9xVtPcWvW-56cLUjdg',
    appId: '1:130443781601:android:13687b5a690bb2ecb31ea0',
    messagingSenderId: '130443781601',
    projectId: 'easybuy-c1efb',
    storageBucket: 'easybuy-c1efb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6xaexTr-omY31132z9kdvnRSlrlY-ypg',
    appId: '1:130443781601:ios:167137c8249f5e1db31ea0',
    messagingSenderId: '130443781601',
    projectId: 'easybuy-c1efb',
    storageBucket: 'easybuy-c1efb.appspot.com',
    iosBundleId: 'com.example.firstFirebaseProject',
  );
}
