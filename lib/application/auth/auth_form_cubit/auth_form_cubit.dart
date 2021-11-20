import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/domain/auth/entities/auth_failure.dart';
import 'package:everythng/domain/auth/i_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_form_state.dart';
part 'auth_form_cubit.freezed.dart';

@Injectable()
class AuthFormCubit extends Cubit<AuthFormState> {
  final IAuthRepository _authRepository;
  final AuthCubit _authCubit;

  AuthFormCubit(this._authRepository, this._authCubit)
      : super(AuthFormState.initial());

  Future<Either<AuthFailure, bool>> setEmail(String email) async {
    return _authRepository
        .doesEmailExist(email: email)
        .then((value) => value.fold((failure) => left(failure), (value) {
              emit(state.copyWith(email: email, authFailure: none()));
              return right(value);
            }));
  }

  void setPassword(String password) =>
      emit(state.copyWith(password: password, authFailure: none()));

  void signInWithEmailAndPassword() =>
      _handleAuthentication(_authCubit.signInWithEmailAndPassword);

  void registerWIthEmailAndPassword() =>
      _handleAuthentication(_authCubit.registerWithEmailAndPassword);

  void _handleAuthentication(
      Future<Either<AuthFailure, Unit>> Function(
              {required String email, required String password})
          call) {
    call(email: state.email, password: state.password).then((value) =>
        value.fold(
            (failure) => emit(state.copyWith(authFailure: Some(failure))),
            (r) => null));
  }
}
