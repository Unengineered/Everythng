import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/domain/auth/entities/everythng_user_auth.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('states', () {
    test('states should not be equal', () {
      assert(const AuthState.initial() != const AuthState.unauthenticated());
      assert(const AuthState.unauthenticated() != const AuthState.authenticated(everythngUser: EverythngUserA(email: 'email', uid: 'uid')));
      assert(const AuthState.initial() != const AuthState.authenticated(everythngUser: EverythngUserA(email: 'email', uid: 'uid')));
    });
  });
}
