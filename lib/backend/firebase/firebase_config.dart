import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCK0iQjHKGLcd-tVnvceprGae7cBsI_vLY",
            authDomain: "tests-analitycs.firebaseapp.com",
            projectId: "tests-analitycs",
            storageBucket: "tests-analitycs.appspot.com",
            messagingSenderId: "480936662260",
            appId: "1:480936662260:web:0e3ffba9110a1c6295baa1",
            measurementId: "G-63PVRTE5WD"));
  } else {
    await Firebase.initializeApp();
  }
}
