import 'dart:convert';
import 'package:everythng/domain/auth/entities/everythng_user.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/auth/i_auth_repository.dart';
import 'package:fort_knox/fort_knox.dart';
import 'package:http/http.dart' as http;

class AuthRepository implements IAuthRepository {
  final FortKnox _fortKnox;
  final http.Client client;
  static const  String url = 'http://ec2-13-232-108-80.ap-south-1.compute.amazonaws.com/';

  AuthRepository(this._fortKnox, this.client);

  @override
  Future<Either<AuthFailure, bool>> doesEmailExist(
      {required String email}) async {
    final response = await client.get(Uri.parse('${url}account?email=$email'));
    if (response.statusCode == 200 || response.statusCode == 404  ) {
    final data = json.decode(response.body) as Map<String,dynamic>;
    return right(data['accountFound']);
    }
    
    return left(const AuthFailure.serverError());
  }

  @override
  Stream<EverythngUser?> getAuthStatusStream() {
    return _fortKnox.getAuthStatusStream().map((baseUser) {
      if (baseUser == null) {
        return null;
      } else {
        return EverythngUser.fromBaseUserAndDetails(baseUser);
      }
    });
  }

  @override
  Either<AuthFailure, EverythngUser> getCurrentUser() {
    try {
      return right(
          EverythngUser.fromBaseUserAndDetails(_fortKnox.getCurrentUser()));
    } on AuthenticationException catch (e) {
      return left(const AuthFailure.unauthenticated());
    }
  }

  @override
  Future<Either<AuthFailure, String>> getToken(
      {bool forceRefresh = false}) async {
    try {
      return right(await _fortKnox.getToken(forceRefresh: forceRefresh));
    } on AuthenticationException catch (e) {
      return left(const AuthFailure.unauthenticated());
    }
  }

  @override
  Future<Either<AuthFailure, EverythngUser>> registerWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      return right(EverythngUser.fromBaseUserAndDetails(await _fortKnox
          .registerWithEmailAndPassword(email: email, password: password)));
    } on AuthenticationException catch (e) {
      if (e.code == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      } else {
        return left(const AuthFailure.invalidFailure());
      }
    }
  }

  @override
  Future<Either<AuthFailure, EverythngUser>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      return right(EverythngUser.fromBaseUserAndDetails(await _fortKnox
          .signInWithEmailAndPassword(email: email, password: password)));
    } on AuthenticationException catch (e) {
      if (e.code == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      } else if (e.code == 'wrong-password') {
        return left(const AuthFailure.incorrectPassword());
      } else if (e.code == 'account-blocked') {
        return left(const AuthFailure.accountBlocked());
      } else {
        return left(const AuthFailure.invalidFailure());
      }
    }
  }

  @override
  Future<void> signOut() => _fortKnox.signOut();
}
