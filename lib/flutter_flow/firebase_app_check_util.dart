import 'package:firebase_app_check/firebase_app_check.dart';

Future initializeFirebaseAppCheck() => FirebaseAppCheck.instance.activate(
      webProvider:
          ReCaptchaV3Provider('6LcQXrcqAAAAAPHw6pB2vD-FwxvOmT7tUV6TuAtH'),
      androidProvider: AndroidProvider.playIntegrity,
    );
