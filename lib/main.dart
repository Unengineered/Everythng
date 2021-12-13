import 'package:device_preview/device_preview.dart';
import 'package:everythng/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => AppWidget(),
    ),
    //   AppWidget()
  );
}
