import 'package:everythng/constants/url.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:network_kit/network_kit.dart';

import 'handlers/background_message_handler.dart';
import 'handlers/foreground_message_handler.dart';

class NotificationRepository {
  final NetworkKit _networkKit;
  final FirebaseMessaging _messaging;

  NotificationRepository(this._networkKit, this._messaging);

  Future<void> registerFcmToken() async {
    final response = await _networkKit.post(Uri.http(url, 'notification/registerToken'),
        body: {"token": await _messaging.getToken()});

    FirebaseMessaging.onBackgroundMessage(backgroundMessageHandler);
    FirebaseMessaging.onMessage.listen(foregroundMessageHandler);

    if(response.statusCode != 200){throw ServerException();}
    
  }
  Future<void> deRegisterFcmToken() async {
   final response = await _networkKit.post(Uri.http(url, 'notification/deRegisterToken'),
        body: {"token": await _messaging.getToken()});
   if(response.statusCode != 200){throw ServerException();}
  }
}

//Either we return a failure or use this,not sure
class ServerException implements Exception{}