import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:everythng/domain/auth/i_auth_repository.dart';
import 'package:fort_knox/fort_knox.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_cubit.freezed.dart';

part 'auth_state.dart';

@LazySingleton()
class AuthCubit extends Cubit<AuthState> {
  final IAuthRepository _authRepository;

  AuthCubit(this._authRepository) : super(const AuthState.initial());

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
    //print("Change state from ${change.currentState} to ${change.nextState}");
  }

  void splashAuthCheck(){
    checkAuthStatus();
    //_authRepository.getAuthStatusStream().listen((event) => checkAuthStatus());
  }

  //TODO: Add tests for checkAuthStatus
  void checkAuthStatus() {
    //print("Checking auth status");
    _authRepository.getCurrentUser().fold(
        (failure) => failure.maybeMap(
            unauthenticated: (_) {
              //print("Get current user returned unauthenticated");
              emit(const AuthState.unauthenticated());
            },
            orElse: () {}), (everythngUser) {
      //print("Get current user returned authenticated");
      emit(AuthState.authenticated(everythngUser: everythngUser));
    });
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
      {required Future<Either<AuthFailure, BaseUser>> Function(
              {required String email, required String password})
          call,
      required String email,
      required String password}) async {
    return call(email: email, password: password)
        .then((value) => value.fold((failure) => left(failure), (_) {
              checkAuthStatus();
              return right(unit);
            }));
  }

  Future<void> signOut() async {
    await _authRepository.signOut();
    checkAuthStatus();
  }
}
