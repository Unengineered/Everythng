import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:everythng/domain/profile/entities/everythng_user.dart';
import 'package:everythng/domain/profile/i_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

@singleton
class ProfileCubit extends Cubit<ProfileState> {
  final AuthCubit _authCubit;
  final IProfileRepository _profileRepository;

  ProfileCubit(this._authCubit, this._profileRepository)
      : super(const ProfileState.initial()) {
    _handleAuthState(_authCubit.state);
    _authCubit.stream.listen(_handleAuthState);
  }

  void getProfileData() async {
    final result = await _profileRepository.getProfileData();
    result.fold((failure) {
      failure.map((value) => null,
          noProfileData: (_) => emit(const ProfileState.noData()));
    }, (everythngUser) {
      emit(ProfileState.loaded(everythngUser: everythngUser));
    });
  }

  Future<Either<NetworkFailure, Unit>> setProfileData(
      EverythngUser user) async {
    final result =
        await _profileRepository.updateProfileData(everythngUser: user);
    return result.fold((failure) => left(failure), (user) {
      emit(ProfileState.loaded(everythngUser: user));
      return right(unit);
    });
  }

  void _handleAuthState(AuthState state) {
    state.map(initial: (_) {
      emit(const ProfileState.initial());
    }, unauthenticated: (_) {
      emit(const ProfileState.initial());
    }, authenticated: (_) {
      getProfileData();
    });
  }
}
