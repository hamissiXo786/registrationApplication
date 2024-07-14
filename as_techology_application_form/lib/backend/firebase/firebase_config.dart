import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAPxCabokbhK6jS1hIiSeFhzHwmyYlWaFg",
            authDomain: "astechnology-50923.firebaseapp.com",
            projectId: "astechnology-50923",
            storageBucket: "astechnology-50923.appspot.com",
            messagingSenderId: "457562477408",
            appId: "1:457562477408:web:4ad0cdc23b2b1bcef2c405",
            measurementId: "G-FGV7M8S0V8"));
  } else {
    await Firebase.initializeApp();
  }
}
