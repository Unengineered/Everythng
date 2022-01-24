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
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import 'application/auth/auth_cubit/auth_cubit.dart' as _i11;
import 'application/auth/auth_form_cubit/auth_form_cubit.dart' as _i12;
import 'application/discover/discover_cubit.dart' as _i22;
import 'application/marketplace/marketplace_cubit.dart' as _i19;
import 'application/profile/profile_cubit/profile_cubit.dart' as _i20;
import 'application/profile/profile_form_cubit/profile_form_cubit.dart' as _i21;
import 'domain/auth/i_auth_repository.dart' as _i6;
import 'domain/discover/i_discover_repository.dart' as _i13;
import 'domain/marketplace/i_marketplace_repository.dart' as _i15;
import 'domain/profile/i_profile_repository.dart' as _i17;
import 'infrastructure/auth/auth_injection_module.dart' as _i24;
import 'infrastructure/auth/auth_repository.dart' as _i7;
import 'infrastructure/core/core_injection_module.dart' as _i23;
import 'infrastructure/discover/discover_repository.dart' as _i14;
import 'infrastructure/marketplace/marketplace_repository.dart' as _i16;
import 'infrastructure/product/product_repository.dart' as _i9;
import 'infrastructure/profile/profile_repository.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final coreInjectionModule = _$CoreInjectionModule();
  final authInjectionModule = _$AuthInjectionModule();
  gh.factory<_i3.Client>(() => coreInjectionModule.httpClient);
  gh.lazySingleton<_i4.FirebaseAuth>(() => authInjectionModule.firebaseAuth);
  gh.lazySingleton<_i5.FortKnox>(() => authInjectionModule.fortKnox);
  gh.factory<_i6.IAuthRepository>(
      () => _i7.AuthRepository(get<_i5.FortKnox>(), get<_i3.Client>()));
  gh.lazySingleton<_i8.NetworkKit>(() => coreInjectionModule.networkKit);
  gh.lazySingleton<_i9.ProductRepository>(
      () => _i9.ProductRepository(get<_i8.NetworkKit>()));
  await gh.factoryAsync<_i10.SharedPreferences>(
      () => coreInjectionModule.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i11.AuthCubit>(
      () => _i11.AuthCubit(get<_i6.IAuthRepository>()));
  gh.factory<_i12.AuthFormCubit>(() =>
      _i12.AuthFormCubit(get<_i6.IAuthRepository>(), get<_i11.AuthCubit>()));
  gh.factory<_i13.IDiscoverRepository>(
      () => _i14.DiscoverRepository(get<_i8.NetworkKit>()));
  gh.factory<_i15.IMarketplaceRepository>(
      () => _i16.MarketplaceRepository(get<_i10.SharedPreferences>()));
  gh.factory<_i17.IProfileRepository>(
      () => _i18.ProfileRepository(get<_i8.NetworkKit>()));
  gh.lazySingleton<_i19.MarketplaceCubit>(
      () => _i19.MarketplaceCubit(get<_i15.IMarketplaceRepository>()));
  gh.singleton<_i20.ProfileCubit>(
      _i20.ProfileCubit(get<_i11.AuthCubit>(), get<_i17.IProfileRepository>()));
  gh.factory<_i21.ProfileFormCubit>(
      () => _i21.ProfileFormCubit(get<_i20.ProfileCubit>()));
  gh.lazySingleton<_i22.DiscoverCubit>(
      () => _i22.DiscoverCubit(get<_i13.IDiscoverRepository>()));
  return get;
}

class _$CoreInjectionModule extends _i23.CoreInjectionModule {}

class _$AuthInjectionModule extends _i24.AuthInjectionModule {}
