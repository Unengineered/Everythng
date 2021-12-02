// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:fort_knox/fort_knox.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:network_kit/network_kit.dart' as _i10;

import 'application/auth/auth_cubit/auth_cubit.dart' as _i11;
import 'application/auth/auth_form_cubit/auth_form_cubit.dart' as _i12;
import 'application/discover/discover_cubit.dart' as _i4;
import 'domain/auth/i_auth_repository.dart' as _i8;
import 'domain/discover/i_discover_repository.dart' as _i5;
import 'infrastructure/auth/auth_injection_module.dart' as _i14;
import 'infrastructure/auth/auth_repository.dart' as _i9;
import 'infrastructure/core/core_injection_module.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final coreInjectionModule = _$CoreInjectionModule();
  final authInjectionModule = _$AuthInjectionModule();
  gh.factory<_i3.Client>(() => coreInjectionModule.httpClient);
  gh.factory<_i4.DiscoverCubit>(
      () => _i4.DiscoverCubit(get<_i5.IDiscoverRepository>()));
  gh.lazySingleton<_i6.FirebaseAuth>(() => authInjectionModule.firebaseAuth);
  gh.lazySingleton<_i7.FortKnox>(() => authInjectionModule.fortKnox);
  gh.factory<_i8.IAuthRepository>(
      () => _i9.AuthRepository(get<_i7.FortKnox>(), get<_i3.Client>()));
  gh.lazySingleton<_i10.NetworkKit>(() => coreInjectionModule.networkKit);
  gh.lazySingleton<_i11.AuthCubit>(
      () => _i11.AuthCubit(get<_i8.IAuthRepository>()));
  gh.factory<_i12.AuthFormCubit>(() =>
      _i12.AuthFormCubit(get<_i8.IAuthRepository>(), get<_i11.AuthCubit>()));
  return get;
}

class _$CoreInjectionModule extends _i13.CoreInjectionModule {}

class _$AuthInjectionModule extends _i14.AuthInjectionModule {}
