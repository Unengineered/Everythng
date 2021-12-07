import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fort_knox/fort_knox.dart';

void main() {
  group('states', () {
    test('states should not be equal', () {
      assert(const AuthState.initial() != const AuthState.unauthenticated());
      assert(const AuthState.unauthenticated() != const AuthState.authenticated(everythngUser: BaseUser(email: 'email', uid: 'uid')));
      assert(const AuthState.initial() != const AuthState.authenticated(everythngUser: BaseUser(email: 'email', uid: 'uid')));
    });
  });
}
