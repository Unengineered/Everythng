import 'package:dartz/dartz.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:everythng/domain/auth/entities/everythng_user.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, EverythngUser>> registerWithEmailAndPassword(
      {required String email, required String password});
  Future<Either<AuthFailure, EverythngUser>> signInWithEmailAndPassword(
      {required String email, required String password});
  Future<void> signOut();
  Future<Either<AuthFailure, bool>> doesEmailExist({required String email});
  Future<Either<AuthFailure, String>> getToken({bool forceRefresh = false});
  Stream<EverythngUser?> getAuthStatusStream();
  Either<AuthFailure, EverythngUser> getCurrentUser();
}
