import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDfListHdNqgVqQ1YlZlxVxFi5qNbNhpY4",
            authDomain: "progressio-a1i1yq.firebaseapp.com",
            projectId: "progressio-a1i1yq",
            storageBucket: "progressio-a1i1yq.appspot.com",
            messagingSenderId: "1088990799337",
            appId: "1:1088990799337:web:8e4bd70a8e8221196a9778"));
  } else {
    await Firebase.initializeApp();
  }
}
