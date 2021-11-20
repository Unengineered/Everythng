part of 'auth_form_cubit.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState(
      {required String email,
      required String password,
      required Option<AuthFailure> authFailure}) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(email: '', password: '', authFailure: none());
}
