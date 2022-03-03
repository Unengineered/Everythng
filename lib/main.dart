import 'package:everythng/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBc3mRKFy0zK_f4Pbmor5st2FHN5pOXBcA",
        authDomain: "everything-25.firebaseapp.com",
        projectId: "everything-25",
        storageBucket: "everything-25.appspot.com",
        messagingSenderId: "246091361259",
        appId: "1:246091361259:web:0c01f46d07a734eed247ae",
        measurementId: "G-5XHELQVK0C"),
  );
  await configureDependencies();
  //log((await getIt<FortKnox>().getToken()).toString());
  runApp(AppWidget());
}
