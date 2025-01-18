import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyALt9p2klo1N4md2t-kQw7Y6sEAp2Hgoa0",
            authDomain: "eco-track-prot-0rqumv.firebaseapp.com",
            projectId: "eco-track-prot-0rqumv",
            storageBucket: "eco-track-prot-0rqumv.firebasestorage.app",
            messagingSenderId: "1092560628054",
            appId: "1:1092560628054:web:88fb6cc9d03fb0f996cef7"));
  } else {
    await Firebase.initializeApp();
  }
}
