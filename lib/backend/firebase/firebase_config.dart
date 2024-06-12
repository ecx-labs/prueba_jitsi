import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCkaOncSRriG1aoIECTjAIEKM_o_5neVTo",
            authDomain: "livekit-integration-fxqcdq.firebaseapp.com",
            projectId: "livekit-integration-fxqcdq",
            storageBucket: "livekit-integration-fxqcdq.appspot.com",
            messagingSenderId: "514956723433",
            appId: "1:514956723433:web:5cf68ac284a7ec4b03dc78"));
  } else {
    await Firebase.initializeApp();
  }
}
