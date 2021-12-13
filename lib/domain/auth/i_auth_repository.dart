import 'package:dartz/dartz.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:fort_knox/fort_knox.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, BaseUser>> registerWithEmailAndPassword(
      {required String email, required String password});
  Future<Either<AuthFailure, BaseUser>> signInWithEmailAndPassword(
      {required String email, required String password});
  Future<void> signOut();
  Future<Either<AuthFailure, bool>> doesEmailExist({required String email});
  Future<Either<AuthFailure, String>> getToken({bool forceRefresh = false});
  Stream<BaseUser?> getAuthStatusStream();
  Either<AuthFailure, BaseUser> getCurrentUser();
}
