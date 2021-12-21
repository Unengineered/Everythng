import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPref extends Mock implements SharedPreferences{}

SharedPreferences getSharedPreferences({String? marketplace}){
  final service = MockSharedPref();

  when(() => service.setString('marketplace', any())).thenAnswer((_) async => true);
  when(() => service.getString('marketplace')).thenReturn(marketplace);

  return service;
}