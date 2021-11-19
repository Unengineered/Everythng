import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:everythng/domain/auth/entities/everythng_user.dart';
import 'package:everythng/domain/auth/i_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_cubit.freezed.dart';

part 'auth_state.dart';

@Injectable()
class AuthCubit extends Cubit<AuthState> {
  final IAuthRepository _authRepository;
  AuthCubit(this._authRepository) : super(const AuthState.initial()) {
    _authRepository.getCurrentUser().fold(
        (failure) => failure.maybeMap(
            unauthenticated: (_) => emit(const AuthState.unauthenticated()),
            orElse: () {}),
        (everythngUser) =>
            emit(AuthState.authenticated(everythngUser: everythngUser)));
  }

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
          {required String email, required String password}) async =>
      _authenticationHandler(
          call: _authRepository.signInWithEmailAndPassword,
          email: email,
          password: password);

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required String email, required String password}) async =>
      _authenticationHandler(
          call: _authRepository.registerWithEmailAndPassword,
          email: email,
          password: password);

  Future<Either<AuthFailure, Unit>> _authenticationHandler(
      {required Future<Either<AuthFailure, EverythngUser>> Function(
              {required String email, required String password})
          call,
      required String email,
      required String password}) async {
    return call(email: email, password: password).then(
        (value) => value.fold((failure) => left(failure), (everythngUser) {
              emit(AuthState.authenticated(everythngUser: everythngUser));
              return right(unit);
            }));
  }

  Future<void> signOut() => _authRepository.signOut();


}
