import 'package:everythng/constants/url.dart';
import 'package:everythng/infrastructure/notification/system/notification_system.dart';
import 'package:network_kit/network_kit.dart';

class NotificationRepository {
  final NetworkKit networkKit;
  final NotificationSystem notificationSystem;

  NotificationRepository(this.networkKit, this.notificationSystem);

  Future<void> registerFcmToken() async {
    final response = await networkKit.post(Uri.http(url, 'notification/registerToken'),
        body: {"token": await notificationSystem.getFcmToken()});
    if(response.statusCode != 200){throw ServerException();}
    
  }
  Future<void> deRegisterFcmToken() async {
   final response = await networkKit.post(Uri.http(url, 'notification/deRegisterToken'),
        body: {"token": await notificationSystem.getFcmToken()});
   if(response.statusCode != 200){throw ServerException();}
  }
}

//Either we return a failure or use this,not sure
class ServerException implements Exception{}