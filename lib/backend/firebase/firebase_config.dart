import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBJpmvhUo4nuUq3p_HSRPSyO1-UJT3UCAw",
            authDomain: "yawa-335c3.firebaseapp.com",
            projectId: "yawa-335c3",
            storageBucket: "yawa-335c3.appspot.com",
            messagingSenderId: "438612331982",
            appId: "1:438612331982:web:19fee60c34393bd1a52f9f"));
  } else {
    await Firebase.initializeApp();
  }
}
