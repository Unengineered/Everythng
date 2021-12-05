import 'dart:convert';

import 'package:everythng/infrastructure/notfication/manager/notification_manager.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> backgroundMessageHandler(RemoteMessage message) async {


  Map<String, dynamic>? command = json.decode(utf8.decode(base64.decode(message
      .data['command']))); //Converting the encoded command into JSON Object.

  switch (message.data['recipient']) {
    case 'notification':
      {
        NotificationManager().execute(command!);
        break;
      }

    // case 'cache':
    //   {
    //     CacheManager().cache(message.data);
    //     break;
    //   }
  }
}