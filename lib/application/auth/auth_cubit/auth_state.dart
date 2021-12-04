part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState{
    const factory AuthState.initial() = _Initial;
    const factory AuthState.unauthenticated() = _Unauthenticated;
    const factory AuthState.authenticated({required EverythngUserA everythngUser}) = _Authenticated;
}