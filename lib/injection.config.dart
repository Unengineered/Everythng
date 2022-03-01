// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:fort_knox/fort_knox.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:network_kit/network_kit.dart' as _i12;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import 'application/auth/auth_cubit/auth_cubit.dart' as _i16;
import 'application/auth/auth_form_cubit/auth_form_cubit.dart' as _i17;
import 'application/discover/discover_cubit.dart' as _i32;
import 'application/list/list_cubit.dart' as _i28;
import 'application/marketplace/marketplace_cubit.dart' as _i29;
import 'application/profile/profile_cubit/profile_cubit.dart' as _i30;
import 'application/profile/profile_form_cubit/profile_form_cubit.dart' as _i31;
import 'application/store/store_cubit/store_page_cubit.dart' as _i14;
import 'application/today/today_cubit.dart' as _i15;
import 'domain/auth/i_auth_repository.dart' as _i6;
import 'domain/discover/i_discover_repository.dart' as _i18;
import 'domain/list/i_list_repository.dart' as _i20;
import 'domain/marketplace/i_marketplace_repository.dart' as _i22;
import 'domain/product/i_product_repository.dart' as _i8;
import 'domain/profile/i_profile_repository.dart' as _i25;
import 'domain/store/i_store_repository.dart' as _i10;
import 'infrastructure/auth/auth_injection_module.dart' as _i34;
import 'infrastructure/auth/auth_repository.dart' as _i7;
import 'infrastructure/core/core_injection_module.dart' as _i33;
import 'infrastructure/discover/discover_repository.dart' as _i19;
import 'infrastructure/list/list_repository.dart' as _i21;
import 'infrastructure/marketplace/marketplace_repository.dart' as _i23;
import 'infrastructure/product/mock_product_repository.dart' as _i9;
import 'infrastructure/product/product_repository.dart' as _i24;
import 'infrastructure/profile/profile_repository.dart' as _i26;
import 'infrastructure/store/mock_store_repository.dart' as _i11;
import 'infrastructure/store/store_repository.dart' as _i27;

const String _mock = 'mock';
const String _test = 'test';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
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
  gh.singleton<_i8.IProductRepository>(_i9.MockProductRepository(),
      registerFor: {_mock});
  gh.singleton<_i10.IStoreRepository>(_i11.MockStoreRepository(),
      registerFor: {_mock});
  gh.lazySingleton<_i12.NetworkKit>(() => coreInjectionModule.networkKit);
  await gh.factoryAsync<_i13.SharedPreferences>(
      () => coreInjectionModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i14.StorePageCubit>(() => _i14.StorePageCubit(
      get<_i10.IStoreRepository>(), get<_i8.IProductRepository>()));
  gh.singleton<_i15.TodayCubit>(_i15.TodayCubit(
      get<_i10.IStoreRepository>(), get<_i8.IProductRepository>()));
  gh.lazySingleton<_i16.AuthCubit>(
      () => _i16.AuthCubit(get<_i6.IAuthRepository>()));
  gh.factory<_i17.AuthFormCubit>(() =>
      _i17.AuthFormCubit(get<_i6.IAuthRepository>(), get<_i16.AuthCubit>()));
  gh.factory<_i18.IDiscoverRepository>(
      () => _i19.DiscoverRepository(get<_i12.NetworkKit>()));
  gh.factory<_i20.IListRepository>(
      () => _i21.ListRepository(get<_i12.NetworkKit>()));
  gh.factory<_i22.IMarketplaceRepository>(
      () => _i23.MarketplaceRepository(get<_i13.SharedPreferences>()));
  gh.singleton<_i8.IProductRepository>(
      _i24.ProductRepository(get<_i12.NetworkKit>()),
      registerFor: {_test, _dev});
  gh.factory<_i25.IProfileRepository>(
      () => _i26.ProfileRepository(get<_i12.NetworkKit>()));
  gh.singleton<_i10.IStoreRepository>(
      _i27.StoreRepository(get<_i12.NetworkKit>()),
      registerFor: {_test, _dev});
  gh.lazySingleton<_i28.ListCubit>(
      () => _i28.ListCubit(get<_i20.IListRepository>()));
  gh.lazySingleton<_i29.MarketplaceCubit>(
      () => _i29.MarketplaceCubit(get<_i22.IMarketplaceRepository>()));
  gh.singleton<_i30.ProfileCubit>(
      _i30.ProfileCubit(get<_i16.AuthCubit>(), get<_i25.IProfileRepository>()));
  gh.factory<_i31.ProfileFormCubit>(
      () => _i31.ProfileFormCubit(get<_i30.ProfileCubit>()));
  gh.lazySingleton<_i32.DiscoverCubit>(
      () => _i32.DiscoverCubit(get<_i18.IDiscoverRepository>()));
  return get;
}

class _$CoreInjectionModule extends _i33.CoreInjectionModule {}

class _$AuthInjectionModule extends _i34.AuthInjectionModule {}
