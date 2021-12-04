import 'package:dartz/dartz.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:everythng/domain/auth/entities/everythng_user_auth.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, EverythngUserA>> registerWithEmailAndPassword(
      {required String email, required String password});
  Future<Either<AuthFailure, EverythngUserA>> signInWithEmailAndPassword(
      {required String email, required String password});
  Future<void> signOut();
  Future<Either<AuthFailure, bool>> doesEmailExist({required String email});
  Future<Either<AuthFailure, String>> getToken({bool forceRefresh = false});
  Stream<EverythngUserA?> getAuthStatusStream();
  Either<AuthFailure, EverythngUserA> getCurrentUser();
}
