import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDnJQf0xrBxXgZUEABXREi1zu56DMxHXqM",
            authDomain: "productiontest-full.firebaseapp.com",
            projectId: "productiontest-full",
            storageBucket: "productiontest-full.appspot.com",
            messagingSenderId: "525390033787",
            appId: "1:525390033787:web:75b361648bb3d66ef483de",
            measurementId: "G-63PVRTE5WD"));
  } else {
    await Firebase.initializeApp();
  }
}
