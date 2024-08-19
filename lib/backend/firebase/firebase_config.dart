import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBfibRmQJ8JKGli07Ul17ay7P3bCEKnfrM",
            authDomain: "calypso-4f4eb.firebaseapp.com",
            projectId: "calypso-4f4eb",
            storageBucket: "calypso-4f4eb.appspot.com",
            messagingSenderId: "1006126369261",
            appId: "1:1006126369261:web:dc610217a4863aa583ffe4",
            measurementId: "G-E4RY89ZN0T"));
  } else {
    await Firebase.initializeApp();
  }
}
