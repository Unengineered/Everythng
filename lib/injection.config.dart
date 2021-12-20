// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:fort_knox/fort_knox.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:network_kit/network_kit.dart' as _i8;

import 'application/auth/auth_cubit/auth_cubit.dart' as _i9;
import 'application/auth/auth_form_cubit/auth_form_cubit.dart' as _i10;
import 'application/discover/discover_cubit.dart' as _i21;
import 'application/profile/profile_cubit/profile_cubit.dart' as _i17;
import 'application/profile/profile_form_cubit/profile_form_cubit.dart' as _i18;
import 'application/store/store_cubit/store_cubit.dart' as _i19;
import 'application/store/store_form_cubit/store_form_cubit.dart' as _i20;
import 'domain/auth/i_auth_repository.dart' as _i6;
import 'domain/discover/i_discover_repository.dart' as _i11;
import 'domain/profile/i_profile_repository.dart' as _i13;
import 'domain/store/i_store_repository.dart' as _i15;
import 'infrastructure/auth/auth_injection_module.dart' as _i23;
import 'infrastructure/auth/auth_repository.dart' as _i7;
import 'infrastructure/core/core_injection_module.dart' as _i22;
import 'infrastructure/discover/discover_repository.dart' as _i12;
import 'infrastructure/profile/profile_repository.dart' as _i14;
import 'infrastructure/store/store_repository.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final coreInjectionModule = _$CoreInjectionModule();
  final authInjectionModule = _$AuthInjectionModule();
  gh.factory<_i3.Client>(() => coreInjectionModule.httpClient);
  gh.lazySingleton<_i4.FirebaseAuth>(() => authInjectionModule.firebaseAuth);
  gh.lazySingleton<_i5.FortKnox>(() => authInjectionModule.fortKnox);
  gh.factory<_i6.IAuthRepository>(
      () => _i7.AuthRepository(get<_i5.FortKnox>(), get<_i3.Client>()));
  gh.lazySingleton<_i8.NetworkKit>(() => coreInjectionModule.networkKit);
  gh.lazySingleton<_i9.AuthCubit>(
      () => _i9.AuthCubit(get<_i6.IAuthRepository>()));
  gh.factory<_i10.AuthFormCubit>(() =>
      _i10.AuthFormCubit(get<_i6.IAuthRepository>(), get<_i9.AuthCubit>()));
  gh.factory<_i11.IDiscoverRepository>(
      () => _i12.DiscoverRepository(get<_i8.NetworkKit>()));
  gh.factory<_i13.IProfileRepository>(
      () => _i14.ProfileRepository(get<_i8.NetworkKit>()));
  gh.factory<_i15.IStoreRepository>(
      () => _i16.StoreRepository(get<_i8.NetworkKit>()));
  gh.singleton<_i17.ProfileCubit>(
      _i17.ProfileCubit(get<_i9.AuthCubit>(), get<_i13.IProfileRepository>()));
  gh.factory<_i18.ProfileFormCubit>(
      () => _i18.ProfileFormCubit(get<_i17.ProfileCubit>()));
  gh.singleton<_i19.StoreCubit>(_i19.StoreCubit(get<_i15.IStoreRepository>()));
  gh.factory<_i20.StoreFormCubit>(
      () => _i20.StoreFormCubit(get<_i19.StoreCubit>()));
  gh.lazySingleton<_i21.DiscoverCubit>(
      () => _i21.DiscoverCubit(get<_i11.IDiscoverRepository>()));
  return get;
}

class _$CoreInjectionModule extends _i22.CoreInjectionModule {}

class _$AuthInjectionModule extends _i23.AuthInjectionModule {}
