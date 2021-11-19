import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure{
    const factory AuthFailure.userDisabled() = UserDisabled;
    const factory AuthFailure.incorrectPassword() = IncorrectPassword;
    const factory AuthFailure.accountBlocked() = AccountBlocked;
    const factory AuthFailure.invalidUser() = InvalidUser;
    const factory AuthFailure.unauthenticated() = Unauthenticated;
    const factory AuthFailure.serverError() = ServerError;
    const factory AuthFailure.invalidFailure() = InvalidFailure;
}