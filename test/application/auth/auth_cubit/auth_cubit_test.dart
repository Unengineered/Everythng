import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fort_knox/fort_knox.dart';
import 'package:mocktail/mocktail.dart';

import '../../../setup/auth/auth_repository_helper.dart';
import '../../../setup/constants.dart';

void main() {
  group('signInWithEmailAndPassword', () {
    test(
        'should return [right(Unit)] and emit [AuthState.authenticated] state on successful login',
        () async {
      //Arrange
      final cubit = AuthCubit(getAuthRepoForSigning());

      //Act
      final result = await cubit.signInWithEmailAndPassword(
          email: email, password: password);

      //Assert
      expect(result, right(unit));
    });

    blocTest(
        'should and emit [AuthState.authenticated] state on successful login',
        build: () {
          return AuthCubit(getAuthRepoForSigning());
        },
        act: (AuthCubit cubit) =>
            cubit.signInWithEmailAndPassword(email: email, password: password),
        expect: () => const [
              AuthState.authenticated(
                  everythngUser:
                  BaseUser(email: email, uid: uid))
            ]);

    test('should pass failures on unsuccessful login', () async {
      const failures = [
        AuthFailure.incorrectPassword(),
        AuthFailure.accountBlocked(),
        AuthFailure.userDisabled(),
        AuthFailure.invalidFailure()
      ];

      for (final failure in failures) {
        //Arrange
        final cubit = AuthCubit(getAuthRepoForSigning(failure: failure));

        //Act
        final result = await cubit.signInWithEmailAndPassword(
            email: email, password: password);

        //Assert
        expect(result, left(failure));
      }
    });
  });
  group('registerWithEmailAndPassword', () {
    test(
        'should return [right(Unit)] and emit [AuthState.authenticated] state on successful registration',
        () async {
      //Arrange
      final cubit = AuthCubit(getAuthRepoForSigning());

      //Act
      final result = await cubit.registerWithEmailAndPassword(
          email: email, password: password);

      //Assert
      expect(result, right(unit));
    });

    blocTest(
        'should and emit [AuthState.authenticated] state on successful registration',
        build: () {
          return AuthCubit(getAuthRepoForSigning());
        },
        act: (AuthCubit cubit) =>
            cubit.registerWithEmailAndPassword(email: email, password: password),
        expect: () => const [
              AuthState.authenticated(
                  everythngUser:
                  BaseUser(email: email, uid: uid))
            ]);

    test('should pass failures on unsuccessful login', () async {
      const failures = [
        AuthFailure.userDisabled(),
        AuthFailure.invalidFailure()
      ];

      for (final failure in failures) {
        //Arrange
        final cubit = AuthCubit(getAuthRepoForSigning(failure: failure));

        //Act
        final result = await cubit.registerWithEmailAndPassword(
            email: email, password: password);

        //Assert
        expect(result, left(failure));
      }
    });
  });
  group('signOut', (){
    test('should call repository\'s signOut function', () async {
      //Arrange
      final repo = getAuthRepoForSigning();
      final cubit = AuthCubit(repo);

      //Act
      await cubit.signOut();

      //Assert
      verify(repo.signOut);
    });
  });
}
