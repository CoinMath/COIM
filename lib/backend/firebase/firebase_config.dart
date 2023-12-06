import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCO8mVlpjbdDXuUP_Vng8d9-sLNuS1zarw",
            authDomain: "coinmathap.firebaseapp.com",
            projectId: "coinmathap",
            storageBucket: "coinmathap.appspot.com",
            messagingSenderId: "108184919991",
            appId: "1:108184919991:web:036ebba206dd5046155232",
            measurementId: "G-6G4SJMVCB1"));
  } else {
    await Firebase.initializeApp();
  }
}
