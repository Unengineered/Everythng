import 'package:dartz/dartz.dart';
import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthCubit extends Mock implements AuthCubit{}

AuthCubit getAuthCubitForFailure(AuthFailure failure){
  final service = MockAuthCubit();
  when(() => service.signInWithEmailAndPassword(email: any(named: 'email'), password: any(named: 'password'))).thenAnswer((invocation) async => left(failure));
  when(() => service.registerWithEmailAndPassword(email: any(named: 'email'), password: any(named: 'password'))).thenAnswer((invocation) async => left(failure));
  return service;
}