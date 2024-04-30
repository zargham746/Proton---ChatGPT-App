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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB17OoE9q8iBEY9zlA4-nd5HBy9fQ0sYF8',
    appId: '1:1071196201791:android:78173fef5d47fb16c9698a',
    messagingSenderId: '1071196201791',
    projectId: 'flutter-ai-app-22fa3',
    storageBucket: 'flutter-ai-app-22fa3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEM4iFypAsCVt2uL-fXlGexKgP-Vpe9LA',
    appId: '1:1071196201791:ios:c6f8262006b58b57c9698a',
    messagingSenderId: '1071196201791',
    projectId: 'flutter-ai-app-22fa3',
    storageBucket: 'flutter-ai-app-22fa3.appspot.com',
    androidClientId: '1071196201791-e1rijb83p8vatrc5glg0ts68l79q81hb.apps.googleusercontent.com',
    iosClientId: '1071196201791-ipb579i93m88rjvm1qts7tn6hnqmql5c.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterProtonApp',
  );
}
