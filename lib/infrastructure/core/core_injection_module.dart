import 'package:everythng/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:fort_knox/fort_knox.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:network_kit/network_kit.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class CoreInjectionModule {
  @factory
  http.Client get httpClient => http.Client();
  
  @lazySingleton
  NetworkKit get networkKit => NetworkKit(getIt<FortKnox>());

  @preResolve
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();
}
