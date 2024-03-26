import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDprjj4sNEEwswiuWmI_Ftj3vMiIMGndCw",
            authDomain: "phi-check-m1cuf6.firebaseapp.com",
            projectId: "phi-check-m1cuf6",
            storageBucket: "phi-check-m1cuf6.appspot.com",
            messagingSenderId: "316178588170",
            appId: "1:316178588170:web:1556d832a09adf82ec35f3"));
  } else {
    await Firebase.initializeApp();
  }
}
