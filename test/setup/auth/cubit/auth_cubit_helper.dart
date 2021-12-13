import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthCubit extends MockCubit<AuthState> implements AuthCubit {}

AuthCubit getAuthCubitForFailure(AuthFailure failure) {
  final service = MockAuthCubit();
  when(() => service.signInWithEmailAndPassword(
          email: any(named: 'email'), password: any(named: 'password')))
      .thenAnswer((invocation) async => left(failure));
  when(() => service.registerWithEmailAndPassword(
          email: any(named: 'email'), password: any(named: 'password')))
      .thenAnswer((invocation) async => left(failure));
  return service;
}

AuthCubit getAuthCubitForStateChanges([List<AuthState> states = const[AuthState.initial()]]){
  if(states[0] != const AuthState.initial()) {
    states = [const AuthState.initial(), ...states];
  }
  final service = MockAuthCubit();
  final stateStream = Stream.fromIterable(states);
  whenListen(service, stateStream);

  //TODO: Fix: return the current state on state getter.
  when(() => service.state).thenReturn(const AuthState.initial());
  return service;
}