import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:everythng/domain/profile/entities/everythng_user.dart';
import 'package:everythng/domain/profile/i_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
    addProfileListener();
  }

  void getProfileData() async {
    final result = await _profileRepository.getProfileData();
    result.fold((NetworkFailure failure) {
      failure.map((value){
        log("Failed to get profile data");
        Future.delayed(const Duration(seconds: 2), (){
          log("Retrying for profile data");
          getProfileData();
        });
      },
          noProfileData: (_) => emit(const ProfileState.noData()));
    }, (everythngUser) {
      emit(ProfileState.loaded(everythngUser: everythngUser));
    });
  }

  void setProfileData(
      EverythngUser user) async {
   _profileRepository.updateProfileData(everythngUser: user);
  }

  void _handleAuthState(AuthState state) {
    state.map(initial: (_) {
      emit(const ProfileState.initial());
    }, unauthenticated: (_) {
      emit(const ProfileState.initial());
    }, authenticated: (_) {
      //getProfileData();
    });
  }

  void addProfileListener(){
      _profileRepository.getProfileStream().listen((EverythngUser user) {
        emit(ProfileState.loaded(everythngUser: user));
      });
  }
}
