import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDHqJ8nf1MMUFOW16uVe9gjYIIDKQ0RRRU",
            authDomain: "sosrs-ed794.firebaseapp.com",
            projectId: "sosrs-ed794",
            storageBucket: "sosrs-ed794.appspot.com",
            messagingSenderId: "982495787770",
            appId: "1:982495787770:web:6d682d1caf4fd985a3e743"));
  } else {
    await Firebase.initializeApp();
  }
}
