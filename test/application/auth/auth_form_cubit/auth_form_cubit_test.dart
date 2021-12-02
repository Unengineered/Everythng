import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/application/auth/auth_form_cubit/auth_form_cubit.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../setup/auth_cubit_helper.dart';
import '../../../setup/auth/auth_repository_helper.dart';
import '../../../setup/constants.dart';

void main() {
  group('setEmail', () {
    test('should return true if email exists', () async {
      //Arrange
      final cubit =
          AuthFormCubit(getAuthRepoForEmailExists(true), MockAuthCubit());

      //Act
      final result = await cubit.setEmail(email);

      //Assert
      expect(result, right(true));
    });

    test('should return false if email exists', () async {
      //Arrange
      final cubit =
          AuthFormCubit(getAuthRepoForEmailExists(false), MockAuthCubit());

      //Act
      final result = await cubit.setEmail(email);

      //Assert
      expect(result, right(false));
    });

    test('should return [AuthFailure.ServerError] if email exists', () async {
      //Arrange
      final cubit = AuthFormCubit(
          getAuthRepoForEmailExists(false, failure: true), MockAuthCubit());

      //Act
      final result = await cubit.setEmail(email);

      //Assert
      expect(result, left(const AuthFailure.serverError()));
    });

    blocTest('should emit state with new email when setEmail is called',
        build: () =>
            AuthFormCubit(getAuthRepoForEmailExists(true), MockAuthCubit()),
        act: (AuthFormCubit cubit) => cubit.setEmail(email),
        expect: () => const [
              AuthFormState(email: email, password: '', authFailure: None())
            ]);
  });
  group('setPassword', () {
    blocTest('should emit state with new password when setPassword is called',
        build: () => AuthFormCubit(MockAuthRepository(), MockAuthCubit()),
        act: (AuthFormCubit cubit) => cubit.setPassword(password),
        expect: () => const [
              AuthFormState(email: '', password: password, authFailure: None())
            ]);
  });
  group('signInWithEmailAndPassword', () {
    const [
      AuthFailure.incorrectPassword(),
      AuthFailure.accountBlocked(),
      AuthFailure.userDisabled(),
      AuthFailure.invalidFailure(),
    ].map((AuthFailure failure) {
      blocTest('should propagate $failure',
          build: () => AuthFormCubit(
              MockAuthRepository(), getAuthCubitForFailure(failure)),
          act: (AuthFormCubit cubit) => cubit.signInWithEmailAndPassword(),
          expect: () => [
                AuthFormState(
                    email: '', password: '', authFailure: Some(failure))
              ]);
    }).toList();
  });
  group('registerWithEmailAndPassword', () {
    const [
      AuthFailure.userDisabled(),
      AuthFailure.invalidFailure(),
    ].map((AuthFailure failure) {
      blocTest('should propagate $failure',
          build: () => AuthFormCubit(
              MockAuthRepository(), getAuthCubitForFailure(failure)),
          act: (AuthFormCubit cubit) => cubit.registerWIthEmailAndPassword(),
          expect: () => [
                AuthFormState(
                    email: '', password: '', authFailure: Some(failure))
              ]);
    }).toList();
  });
}
