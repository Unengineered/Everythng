import 'package:dartz/dartz.dart';
import 'package:everythng/constants/url.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:everythng/domain/auth/entities/everythng_user_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fort_knox/fort_knox.dart';
import 'package:mocktail/mocktail.dart';
import '../../setup/auth/auth_repository_implementation_helper.dart';
import '../../setup/constants.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(Uri.parse(url));
  });

  group('doesEmailExist', () {
    test('Should return true if email exists', () async {
      //Arrange
      final authRepository = getAuthRepositoryForEmailExist(true, 200);
      //Act
      final result = await authRepository.doesEmailExist(email: email);
      //Assert
      expect(result, right(true));
    });

    test('Should return false if email does not exist', () async {
      //Arrange
      final authRepository = getAuthRepositoryForEmailExist(false, 404);
      //Act
      final result = await authRepository.doesEmailExist(email: email);
      //Assert
      expect(result, right(false));
    });

    test(
        'Should return AuthFailure.serverError if api call does not return 404 or 200',
        () async {
      //Arrange
      final authRepository = getAuthRepositoryForEmailExist(false, 420);
      //Act
      final result = await authRepository.doesEmailExist(email: email);
      //Assert
      expect(result, left(const AuthFailure.serverError()));
    });
  });

  group('getAuthStatusStream', () {
    test('should yield EverythngUser when authenticated', () async {
      //Arrange
      final authRepository = getAuthRepositoryForAuthStatusStream(true);
      //Act
      final result = authRepository.getAuthStatusStream();
      //Assert
      expect(result, emitsInAnyOrder([emits(isA<EverythngUserA>()), emitsDone]));
    });

    test('should yield null when unauthenticated', () async {
      //Arrange
      final authRepository = getAuthRepositoryForAuthStatusStream(false);
      //Act
      final result = authRepository.getAuthStatusStream();
      //Assert
      expect(result, emitsInAnyOrder([emits(isNull), emitsDone]));
    });
  });

  group('getCurrentUser', () {
    test('should return EverythngUser when authenticated', () {
      //Arrange
      final authRepository = getAuthRepositoryForCurrentUser(true);
      //Act
      final result = authRepository.getCurrentUser();
      //Assert
      expect(result, right(const EverythngUserA(email: email, uid: uid)));
    });

    test('should return AuthFailure.unauthenticated when unauthenticated', () {
      //Arrange
      final authRepository = getAuthRepositoryForCurrentUser(false);
      //Act
      final result = authRepository.getCurrentUser();
      //Assert
      expect(result, left(const AuthFailure.unauthenticated()));
    });
  });

  group('getToken', () {
    test('should return a string token when authenticated', () async {
      //Arrange
      final authRepository = getAuthRepositoryForToken(true);
      //Act
      final result = await authRepository.getToken();
      //Assert
      expect(result, right(token));
    });

    test('should return AuthFailure.unauthenticated when unauthenticated',
        () async {
      //Arrange
      final authRepository = getAuthRepositoryForToken(false);
      //Act
      final result = await authRepository.getToken();
      //Assert
      expect(result, left(const AuthFailure.unauthenticated()));
    });

    test('should return a new token when forceRefresh is true', () async {
      //Arrange
      final authRepository =
          getAuthRepositoryForToken(true, forceRefresh: true);
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
      final authRepository = getAuthRepositoryForSigning();
      //Act
      final result = await authRepository.registerWithEmailAndPassword(
          email: email, password: password);
      //Assert
      expect(result, right(const EverythngUserA(email: email, uid: uid)));
    });

    test('Should return AuthFailure.invalidFailure if code does not match',
        () async {
      //Arrange
      final authRepository = getAuthRepositoryForSigning(
          exception: AuthenticationException.invalidException());
      //Act
      final result = await authRepository.registerWithEmailAndPassword(
          email: email, password: password);
      //Assert
      expect(result, left(const AuthFailure.invalidFailure()));
    });

    test('Should return AuthFailure.userDisabled if the user is disabled',
        () async {
      //Arrange
      final authRepository = getAuthRepositoryForSigning(
          exception: AuthenticationException.userDisabled());
      //Act
      final result = await authRepository.registerWithEmailAndPassword(
          email: email, password: password);
      //Assert
      expect(result, left(const AuthFailure.userDisabled()));
    });
  });

  group('signInWithEmailAndPassword', () {
    test('Should return EverythngUser if sign in is successful', () async {
      //Arrange
      final authRepository = getAuthRepositoryForSigning();
      //Act
      final result = await authRepository.signInWithEmailAndPassword(
          email: email, password: password);
      //Assert
      expect(result, right(const EverythngUserA(email: email, uid: uid)));
    });

    test('Should return AuthFailure.invalidFailure if code does not match',
        () async {
      //Arrange
      final authRepository = getAuthRepositoryForSigning(
          exception: AuthenticationException.invalidException());
      //Act
      final result = await authRepository.signInWithEmailAndPassword(
          email: email, password: password);
      //Assert
      expect(result, left(const AuthFailure.invalidFailure()));
    });

    test('Should return AuthFailure.userDisabled if the user is disabled',
        () async {
      //Arrange
      final authRepository = getAuthRepositoryForSigning(
          exception: AuthenticationException.userDisabled());
      //Act
      final result = await authRepository.signInWithEmailAndPassword(
          email: email, password: password);
      //Assert
      expect(result, left(const AuthFailure.userDisabled()));
    });

    test(
        'Should return AuthFailure.incorrectPassword if password is incorrect ',
        () async {
      //Arrange
      final authRepository = getAuthRepositoryForSigning(
          exception: AuthenticationException.wrongPassword());
      //Act
      final result = await authRepository.signInWithEmailAndPassword(
          email: email, password: password);
      //Assert
      expect(result, left(const AuthFailure.incorrectPassword()));
    });

    test('Should return AuthFailure.accountBlocked if the user is blocked',
        () async {
      //Arrange
      final authRepository = getAuthRepositoryForSigning(
          exception: AuthenticationException.accountBlocked());
      //Act
      final result = await authRepository.signInWithEmailAndPassword(
          email: email, password: password);
      //Assert
      expect(result, left(const AuthFailure.accountBlocked()));
    });
  });

  group('signOut', () {
    test('Should unauthenticate and clear data when signed out', () async {
      //Arrange
      final authRepository = getAuthRepositoryForSigning();
      //Act
      await authRepository.signOut();
      //Assert
      verify(() => authRepository.signOut());
    });
  });
}
