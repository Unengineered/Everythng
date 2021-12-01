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
import 'domain/auth/i_auth_repository.dart' as _i6;
import 'infrastructure/auth/auth_injection_module.dart' as _i12;
import 'infrastructure/auth/auth_repository.dart' as _i7;
import 'infrastructure/core/core_injection_module.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  return get;
}

class _$CoreInjectionModule extends _i11.CoreInjectionModule {}

class _$AuthInjectionModule extends _i12.AuthInjectionModule {}
