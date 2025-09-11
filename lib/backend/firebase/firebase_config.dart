import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBMcQr1B4Fr1xOcD68KPq58DJtQPPmDLuk",
            authDomain: "vineyard-628da.firebaseapp.com",
            projectId: "vineyard-628da",
            storageBucket: "vineyard-628da.firebasestorage.app",
            messagingSenderId: "243063242197",
            appId: "1:243063242197:web:2c7e9312f3e40ac35f515c",
            measurementId: "G-W5G68V6XYW"));
  } else {
    await Firebase.initializeApp();
  }
}
