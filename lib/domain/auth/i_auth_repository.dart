import 'package:dartz/dartz.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:everythng/domain/auth/entities/everythng_user.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, EverythngUser>> registerWithEmailAndPassword(
      String email, String password);
  Future<Either<AuthFailure, EverythngUser>> signInWithEmailAndPassword(
      String email, String password);
  Future<void> signOut();
  Future<bool> doesEmailExist();
  Future<Either<AuthFailure, String>> getToken();
  Stream<EverythngUser?> getAuthStatusStream();
  Either<AuthFailure, EverythngUser> getCurrentUser();
}
