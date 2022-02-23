import 'dart:convert';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/auth/i_auth_repository.dart';
import 'package:fort_knox/fort_knox.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:everythng/core/api/url.dart';

@Injectable(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final FortKnox _fortKnox;
  final http.Client client;

  AuthRepository(this._fortKnox, this.client);

  @override
  Future<Either<AuthFailure, bool>> doesEmailExist(
      {required String email}) async {
    //return right(true);

    final response = await client.get(Uri.http(url,"/account",{"email":email.toString()}));
    if (response.statusCode == 200 || response.statusCode == 404) {
      return right(json.decode(response.body)['accountFound']);
    }
    return left(const AuthFailure.serverError());
  }

  @override
  Stream<BaseUser?> getAuthStatusStream() =>
      _fortKnox.getAuthStatusStream();

  @override
  Either<AuthFailure, BaseUser> getCurrentUser() {
    try {
      return right(_fortKnox.getCurrentUser());
    } on AuthenticationException catch (exception) {
      if (exception == AuthenticationException.unauthenticated()) {
        return left(const AuthFailure.unauthenticated());
      } else {
        return left(const AuthFailure.invalidFailure());
      }
    }
  }

  @override
  Future<Either<AuthFailure, String>> getToken(
      {bool forceRefresh = false}) async {
    try {
      return right(await _fortKnox.getToken(forceRefresh: forceRefresh));
    } on AuthenticationException catch (exception) {
      if (exception == AuthenticationException.unauthenticated()) {
        return left(const AuthFailure.unauthenticated());
      } else {
        return left(const AuthFailure.invalidFailure());
      }
    }
  }

  @override
  Future<Either<AuthFailure, BaseUser>> registerWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      return right(await _fortKnox
          .registerWithEmailAndPassword(email: email, password: password));
    } on AuthenticationException catch (exception) {
      if (exception == AuthenticationException.userDisabled()) {
        return left(const AuthFailure.userDisabled());
      } else {
        return left(const AuthFailure.invalidFailure());
      }
    }
  }

  @override
  Future<Either<AuthFailure, BaseUser>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      return right(await _fortKnox
          .signInWithEmailAndPassword(email: email, password: password));
    } on AuthenticationException catch (exception) {
      if (exception == AuthenticationException.userDisabled()) {
        return left(const AuthFailure.userDisabled());
      } else if (exception == AuthenticationException.wrongPassword()) {
        return left(const AuthFailure.incorrectPassword());
      } else if (exception == AuthenticationException.accountBlocked()) {
        return left(const AuthFailure.accountBlocked());
      } else {
        return left(const AuthFailure.invalidFailure());
      }
    }
  }

  @override
  Future<void> signOut() => _fortKnox.signOut();
}
