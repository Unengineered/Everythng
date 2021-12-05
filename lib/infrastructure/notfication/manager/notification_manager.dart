import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationManager {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationManager() {
    if (Platform.isIOS) {
      iosNotificationPermission();
    }
  }

  void iosNotificationPermission() async {
    //TODO: Figure out notifications on iOS devices
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }

  void execute(Map<String, dynamic> command) {
    switch (command['function']) {
      case 'generate_notification':
        {
          generateNotification(command);
          break;
        }
    }
  }

  void generateNotification(Map<String, dynamic> data) async {
    //TODO: Figure out [FlutterLocalNotificationsPlugin]
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      description: 'This channel is used for important notifications.', // description
      importance: Importance.max,
    );

    var initializationSettingsAndroid =
    const AndroidInitializationSettings('ic_launcher');
    var initializationSettingsIOS = const IOSInitializationSettings();
    var initSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    flutterLocalNotificationsPlugin.initialize(initSettings);

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    var android =  AndroidNotificationDetails(channel.id, channel.name, channelDescription: channel.description,
        priority: Priority.high, importance: Importance.max);
    var iOS = const IOSNotificationDetails();

    var platform = NotificationDetails(android: android, iOS: iOS);

    //Send the notification
    await flutterLocalNotificationsPlugin
        .show(0, 'Everythng', data['message'], platform, payload: data.toString());
  }
}