import 'package:dartz/dartz.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:everythng/domain/auth/entities/everythng_user.dart';
import 'package:everythng/infrastructure/auth/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fort_knox/fort_knox.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

class MockFortKnox extends Mock implements FortKnox {}

class MockBaseUser extends Mock implements BaseUser {}

class MockHttpClient extends Mock implements http.Client {}

void main() {
  AuthRepository authRepository;
  MockFortKnox mockFortKnox;
  MockBaseUser mockBaseUser;
  MockHttpClient mockHttpClient;
  mockFortKnox = MockFortKnox();
  const String url = 'http://www.everythng.in';
  mockHttpClient = MockHttpClient();
  authRepository = AuthRepository(mockFortKnox, mockHttpClient);
  mockBaseUser = MockBaseUser();
  const String temail = "email@unengineered.net";
  const String tpassword = "password";
  const String tuid = "UID";

  setUpAll(() {
    registerFallbackValue(Uri.parse(url));
  });

  group('doesEmailExist', () {
    test('Should return true if email exists', () async {
      //Arrange
      when(() => mockHttpClient.get(any())).thenAnswer((invocation) async =>
          http.Response('{"accountFound" : true, "status":200}', 200));
      //Act
      final result = await authRepository.doesEmailExist(email: temail);
      //Assert
      expect(result, right(true));
    });

    test('Should return false if email does not exist', () async {
      //Arrange
      when(() => mockHttpClient.get(any())).thenAnswer((invocation) async =>
          http.Response('{"accountFound" : false, "status":404}', 404));
      //Act
      final result = await authRepository.doesEmailExist(email: temail);
      //Assert
      expect(result, right(false));
    });

    test(
        'Should return AuthFailure.serverError if api call does not return 404 or 200',
        () async {
      //Arrange
      when(() => mockHttpClient.get(any())).thenAnswer((invocation) async =>
          http.Response('{"accountFound" : error, "status":420}', 420));
      //Act
      final result = await authRepository.doesEmailExist(email: temail);
      //Assert
      expect(result, left(const AuthFailure.serverError()));
    });
  });
  group('getAuthStatusStream', () {
    test('should yield EverythngUser when authenticated', () async {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.getAuthStatusStream())
          .thenAnswer((invocation) async* {
        yield mockBaseUser;
      });
      //Act
      final result = authRepository.getAuthStatusStream();
      //Assert
      expect(result, emitsInAnyOrder([emits(isA<EverythngUser>()), emitsDone]));
    });

    test('should yield null when unauthenticated', () async {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.getAuthStatusStream())
          .thenAnswer((invocation) async* {
        yield null;
      });
      //Act
      final result = authRepository.getAuthStatusStream();
      //Assert
      expect(result, emitsInAnyOrder([emits(isNull), emitsDone]));
    });
  });

  group('getCurrentUser', () {
    test('should return EverythngUser when authenticated', () {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.getCurrentUser()).thenReturn(mockBaseUser);
      //Act
      final result = authRepository.getCurrentUser();
      //Assert
      expect(result, right(const EverythngUser(email: temail, uid: tuid)));
    });

    test('should return AuthFailure.unauthenticated when unauthenticated', () {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.getCurrentUser())
          .thenThrow(AuthenticationException.unauthenticated());
      //Act
      final result = authRepository.getCurrentUser();
      //Assert
      expect(result, left(const AuthFailure.unauthenticated()));
    });
  });

  group('getToken', () {
    const String token = 'TOKEN';
    const String refreshedToken = 'REFRESHEDTOKEN';

    test('should return a string token when authenticated', () async {
      //Arrange
      when(() => mockFortKnox.getToken())
          .thenAnswer((invocation) async => token);
      //Act
      final result = await authRepository.getToken();
      //Assert
      expect(result, right(token));
    });

    test('should return AuthFailure.unauthenticated when unauthenticated',
        () async {
      //Arrange
      when(() => mockFortKnox.getToken())
          .thenThrow(AuthenticationException.unauthenticated());
      //Act
      final result = await authRepository.getToken();
      //Assert
      expect(result, left(const AuthFailure.unauthenticated()));
    });

    test('should return a new token when forceRefresh is true', () async {
      //Arrange
      when(() => mockFortKnox.getToken(forceRefresh: true))
          .thenAnswer((invocation) async => refreshedToken);
      //Act
      final result = await authRepository.getToken(forceRefresh: true);
      //Assert
      expect(result, right(refreshedToken));
    });
  });

  group('registerWithEmailAndPassword', () {
    test('Should return EverythngUser if registration is successful ',
        () async {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.registerWithEmailAndPassword(
          email: temail,
          password: tpassword)).thenAnswer((invocation) async => mockBaseUser);
      //Act
      final result = await authRepository.registerWithEmailAndPassword(
          email: temail, password: tpassword);
      //Assert
      expect(result, right(const EverythngUser(email: temail, uid: tuid)));
    });

    test('Should return Authfailure.invalidFailure if code does not match',
        () async {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.registerWithEmailAndPassword(
              email: temail, password: tpassword))
          .thenThrow(
              const AuthenticationException(code: 'invalid', message: null));
      //Act
      final result = await authRepository.registerWithEmailAndPassword(
          email: temail, password: tpassword);
      //Assert
      expect(result, left(const AuthFailure.invalidFailure()));
    });

    test('Should return AuthFailure.userDisabled if the user is disabled',
        () async {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.registerWithEmailAndPassword(
              email: temail, password: tpassword))
          .thenThrow(const AuthenticationException(
              code: 'user-disabled', message: 'user-disabled'));
      //Act
      final result = await authRepository.registerWithEmailAndPassword(
          email: temail, password: tpassword);
      //Assert
      expect(result, left(const AuthFailure.userDisabled()));
    });
  });

  group('signInWithEmailAndPassword', () {
    test('Should return EverythngUser if sign in is successful', () async {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.signInWithEmailAndPassword(
          email: temail,
          password: tpassword)).thenAnswer((invocation) async => mockBaseUser);
      //Act
      final result = await authRepository.signInWithEmailAndPassword(
          email: temail, password: tpassword);
      //Assert
      expect(result, right(const EverythngUser(email: temail, uid: tuid)));
    });

    test('Should return Authfailure.invalidFailure if code does not match',
        () async {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.signInWithEmailAndPassword(
              email: temail, password: tpassword))
          .thenThrow(
              const AuthenticationException(code: 'invalid', message: null));
      //Act
      final result = await authRepository.signInWithEmailAndPassword(
          email: temail, password: tpassword);
      //Assert
      expect(result, left(const AuthFailure.invalidFailure()));
    });

    test('Should return AuthFailure.userDisabled if the user is disabled',
        () async {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.signInWithEmailAndPassword(
              email: temail, password: tpassword))
          .thenThrow(const AuthenticationException(
              code: 'user-disabled', message: 'user-disabled'));
      //Act
      final result = await authRepository.signInWithEmailAndPassword(
          email: temail, password: tpassword);
      //Assert
      expect(result, left(const AuthFailure.userDisabled()));
    });

    test(
        'Should return AuthFailure.incorrectPassword if password is incorrect ',
        () async {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.signInWithEmailAndPassword(
              email: temail, password: 'wrong password'))
          .thenThrow(const AuthenticationException(
              code: 'wrong-password', message: 'wrong-password'));
      //Act
      final result = await authRepository.signInWithEmailAndPassword(
          email: temail, password: 'wrong password');
      //Assert
      expect(result, left(const AuthFailure.incorrectPassword()));
    });

    test('Should return AuthFailure.accountBlocked if the user is blocked',
        () async {
      //Arrange
      when(() => mockBaseUser.email).thenReturn(temail);
      when(() => mockBaseUser.uid).thenReturn(tuid);
      when(() => mockFortKnox.signInWithEmailAndPassword(
              email: temail, password: tpassword))
          .thenThrow(const AuthenticationException(
              code: 'account-blocked', message: 'account-blocked'));
      //Act
      final result = await authRepository.signInWithEmailAndPassword(
          email: temail, password: tpassword);
      //Assert
      expect(result, left(const AuthFailure.accountBlocked()));
    });
  });

  group('signOut', () {
    test('should return AuthFailure.unauthenticated when unauthenticated',
        () async {
      //Arrange
      when(() => mockFortKnox.signOut())
          .thenAnswer((invocation) async => () {});
      //Act
      await authRepository.signOut();
      //Assert
      verify(() => mockFortKnox.signOut());
    });
  });
}
