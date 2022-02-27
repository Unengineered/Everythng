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
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import 'application/auth/auth_cubit/auth_cubit.dart' as _i10;
import 'application/auth/auth_form_cubit/auth_form_cubit.dart' as _i11;
import 'application/discover/discover_cubit.dart' as _i30;
import 'application/list/list_cubit.dart' as _i24;
import 'application/marketplace/marketplace_cubit.dart' as _i25;
import 'application/profile/profile_cubit/profile_cubit.dart' as _i26;
import 'application/profile/profile_form_cubit/profile_form_cubit.dart' as _i27;
import 'application/store/store_cubit/store_page_cubit.dart' as _i28;
import 'application/today/today_cubit.dart' as _i29;
import 'domain/auth/i_auth_repository.dart' as _i6;
import 'domain/discover/i_discover_repository.dart' as _i12;
import 'domain/list/i_list_repository.dart' as _i14;
import 'domain/marketplace/i_marketplace_repository.dart' as _i16;
import 'domain/product/i_product_repository.dart' as _i18;
import 'domain/profile/i_profile_repository.dart' as _i20;
import 'domain/store/i_store_repository.dart' as _i22;
import 'infrastructure/auth/auth_injection_module.dart' as _i32;
import 'infrastructure/auth/auth_repository.dart' as _i7;
import 'infrastructure/core/core_injection_module.dart' as _i31;
import 'infrastructure/discover/discover_repository.dart' as _i13;
import 'infrastructure/list/list_repository.dart' as _i15;
import 'infrastructure/marketplace/marketplace_repository.dart' as _i17;
import 'infrastructure/product/product_repository.dart' as _i19;
import 'infrastructure/profile/profile_repository.dart' as _i21;
import 'infrastructure/store/store_repository.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

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
  await gh.factoryAsync<_i9.SharedPreferences>(
      () => coreInjectionModule.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i10.AuthCubit>(
      () => _i10.AuthCubit(get<_i6.IAuthRepository>()));
  gh.factory<_i11.AuthFormCubit>(() =>
      _i11.AuthFormCubit(get<_i6.IAuthRepository>(), get<_i10.AuthCubit>()));
  gh.factory<_i12.IDiscoverRepository>(
      () => _i13.DiscoverRepository(get<_i8.NetworkKit>()));
  gh.factory<_i14.IListRepository>(
      () => _i15.ListRepository(get<_i8.NetworkKit>()));
  gh.factory<_i16.IMarketplaceRepository>(
      () => _i17.MarketplaceRepository(get<_i9.SharedPreferences>()));
  gh.factory<_i18.IProductRepository>(
      () => _i19.ProductRepository(get<_i8.NetworkKit>()));
  gh.factory<_i20.IProfileRepository>(
      () => _i21.ProfileRepository(get<_i8.NetworkKit>()));
  gh.factory<_i22.IStoreRepository>(
      () => _i23.StoreRepository(get<_i8.NetworkKit>()));
  gh.lazySingleton<_i24.ListCubit>(
      () => _i24.ListCubit(get<_i14.IListRepository>()));
  gh.lazySingleton<_i25.MarketplaceCubit>(
      () => _i25.MarketplaceCubit(get<_i16.IMarketplaceRepository>()));
  gh.singleton<_i26.ProfileCubit>(
      _i26.ProfileCubit(get<_i10.AuthCubit>(), get<_i20.IProfileRepository>()));
  gh.factory<_i27.ProfileFormCubit>(
      () => _i27.ProfileFormCubit(get<_i26.ProfileCubit>()));
  gh.factory<_i28.StorePageCubit>(() => _i28.StorePageCubit(
      get<_i22.IStoreRepository>(), get<_i18.IProductRepository>()));
  gh.singleton<_i29.TodayCubit>(_i29.TodayCubit(
      get<_i22.IStoreRepository>(), get<_i18.IProductRepository>()));
  gh.lazySingleton<_i30.DiscoverCubit>(
      () => _i30.DiscoverCubit(get<_i12.IDiscoverRepository>()));
  return get;
}

class _$CoreInjectionModule extends _i31.CoreInjectionModule {}

class _$AuthInjectionModule extends _i32.AuthInjectionModule {}
