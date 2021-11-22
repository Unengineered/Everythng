import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class CoreInjectionModule {
  @factory
  http.Client get httpClient => http.Client();
}
