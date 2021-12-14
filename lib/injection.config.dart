// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:fort_knox/fort_knox.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:network_kit/network_kit.dart' as _i9;

import 'application/auth/auth_cubit/auth_cubit.dart' as _i10;
import 'application/auth/auth_form_cubit/auth_form_cubit.dart' as _i11;
import 'application/context/context_cubit.dart' as _i4;
import 'application/discover/discover_cubit.dart' as _i18;
import 'application/profile/profile_cubit/profile_cubit.dart' as _i16;
import 'application/profile/profile_form_cubit/profile_form_cubit.dart' as _i17;
import 'domain/auth/i_auth_repository.dart' as _i7;
import 'domain/discover/i_discover_repository.dart' as _i12;
import 'domain/profile/i_profile_repository.dart' as _i14;
import 'infrastructure/auth/auth_injection_module.dart' as _i20;
import 'infrastructure/auth/auth_repository.dart' as _i8;
import 'infrastructure/core/core_injection_module.dart' as _i19;
import 'infrastructure/discover/discover_repository.dart' as _i13;
import 'infrastructure/profile/profile_repository.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final coreInjectionModule = _$CoreInjectionModule();
  final authInjectionModule = _$AuthInjectionModule();
  gh.factory<_i3.Client>(() => coreInjectionModule.httpClient);
  gh.lazySingleton<_i4.ContextCubit>(() => _i4.ContextCubit());
  gh.lazySingleton<_i5.FirebaseAuth>(() => authInjectionModule.firebaseAuth);
  gh.lazySingleton<_i6.FortKnox>(() => authInjectionModule.fortKnox);
  gh.factory<_i7.IAuthRepository>(
      () => _i8.AuthRepository(get<_i6.FortKnox>(), get<_i3.Client>()));
  gh.lazySingleton<_i9.NetworkKit>(() => coreInjectionModule.networkKit);
  gh.lazySingleton<_i10.AuthCubit>(
      () => _i10.AuthCubit(get<_i7.IAuthRepository>()));
  gh.factory<_i11.AuthFormCubit>(() =>
      _i11.AuthFormCubit(get<_i7.IAuthRepository>(), get<_i10.AuthCubit>()));
  gh.factory<_i12.IDiscoverRepository>(
      () => _i13.DiscoverRepository(get<_i9.NetworkKit>()));
  gh.factory<_i14.IProfileRepository>(
      () => _i15.ProfileRepository(get<_i9.NetworkKit>()));
  gh.singleton<_i16.ProfileCubit>(
      _i16.ProfileCubit(get<_i10.AuthCubit>(), get<_i14.IProfileRepository>()));
  gh.factory<_i17.ProfileFormCubit>(
      () => _i17.ProfileFormCubit(get<_i16.ProfileCubit>()));
  gh.lazySingleton<_i18.DiscoverCubit>(
      () => _i18.DiscoverCubit(get<_i12.IDiscoverRepository>()));
  return get;
}

class _$CoreInjectionModule extends _i19.CoreInjectionModule {}

class _$AuthInjectionModule extends _i20.AuthInjectionModule {}
