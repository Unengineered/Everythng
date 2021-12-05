import 'dart:convert';

import 'package:everythng/infrastructure/notification/generator/notification_generator.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> backgroundMessageHandler(RemoteMessage message) async {
  // Notifications send to Firebase by backend have to be base64 encoded
  // and decoded at the frontend.
  Map<String, dynamic>? command = json.decode(utf8.decode(base64.decode(message
      .data['command'])));

  switch (message.data['recipient']) {
    case 'notification':
      {
        NotificationGenerator().execute(command!);
        break;
      }
  }
}