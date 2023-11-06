import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAE5-IpLP9n7FJbD6jO_deUkrjHaZuBWvo",
            authDomain: "comanda-digiral01.firebaseapp.com",
            projectId: "comanda-digiral01",
            storageBucket: "comanda-digiral01.appspot.com",
            messagingSenderId: "751016455271",
            appId: "1:751016455271:web:2dcc082d5c0ed43afbb8c2"));
  } else {
    await Firebase.initializeApp();
  }
}
