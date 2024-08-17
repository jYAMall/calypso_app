import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCthBoh7_U8jQMmFpe04rzIb5BvpOiIec0",
            authDomain: "calypsoapp-db01e.firebaseapp.com",
            projectId: "calypsoapp-db01e",
            storageBucket: "calypsoapp-db01e.appspot.com",
            messagingSenderId: "1067290413907",
            appId: "1:1067290413907:web:2fb9442bcbbcc8ca2f6fa6",
            measurementId: "G-2PMWNH3363"));
  } else {
    await Firebase.initializeApp();
  }
}
