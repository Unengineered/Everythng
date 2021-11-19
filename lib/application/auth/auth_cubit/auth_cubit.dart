import 'package:bloc/bloc.dart';
import 'package:everythng/domain/auth/entities/everythng_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_cubit.freezed.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());
}
