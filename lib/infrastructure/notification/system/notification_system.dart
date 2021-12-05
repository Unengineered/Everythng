import 'dart:async';

import 'package:everythng/infrastructure/notification/handlers/background_message_handler.dart';
import 'package:everythng/infrastructure/notification/handlers/foreground_message_handler.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


class NotificationSystem {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSystem() {
    FirebaseMessaging.onBackgroundMessage(backgroundMessageHandler);
    FirebaseMessaging.onMessage.listen(foregroundMessageHandler);
  }

  Future<String> getFcmToken() async {
    final token = await (messaging.getToken() as FutureOr<String>);
    print("TOKEN: " + token);
    return token;
  }
}