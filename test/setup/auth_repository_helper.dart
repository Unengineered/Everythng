import 'package:dartz/dartz.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:everythng/domain/auth/entities/everythng_user.dart';
import 'package:everythng/domain/auth/i_auth_repository.dart';
import 'package:mocktail/mocktail.dart';

const email = "user@everythng.com";
const password = "skjfasj.ka129!@";
const uid = "UID";

const user = EverythngUser(email: email, uid: uid);

class MockAuthRepository extends Mock implements IAuthRepository {}

IAuthRepository getAuthRepoForSigning({AuthFailure? failure}) {
  final service = MockAuthRepository();
  when(() => service.signOut()).thenAnswer((invocation) => Future.value());
  when(() => service.getCurrentUser())
      .thenReturn(left(const AuthFailure.unauthenticated()));

  if (failure == null) {
    when(() => service.signInWithEmailAndPassword(
        email: any(named: 'email'),
        password: any(named: 'password'))).thenAnswer((invocation) async {
      return right(EverythngUser(
          email: invocation.namedArguments[const Symbol('email')], uid: uid));
    });

    when(() => service.registerWithEmailAndPassword(
        email: any(named: 'email'),
        password: any(named: 'password'))).thenAnswer((invocation) async {
      return right(EverythngUser(
          email: invocation.namedArguments[const Symbol('email')], uid: uid));
    });
  } else {
    when(() => service.signInWithEmailAndPassword(
            email: any(named: 'email'), password: any(named: 'password')))
        .thenAnswer((invocation) async => left(failure));

    when(() => service.registerWithEmailAndPassword(
            email: any(named: 'email'), password: any(named: 'password')))
        .thenAnswer((invocation) async => left(failure));
  }
  return service;
}
