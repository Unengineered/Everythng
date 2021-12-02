import 'package:bloc_test/bloc_test.dart';
import 'package:everythng/application/discover/discover_cubit.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../setup/constants.dart';
import '../../setup/discover/discover_repository_helper.dart';

void main() {
  group('getRecommendations', () {
    blocTest(
        'should emit LoadedState when getRecommendations returns recommendations',
        build: () => DiscoverCubit(getDiscoverRepositoryForRecommendations()),
        act: (DiscoverCubit cubit) => cubit.getRecommendations(),
        expect: () => [
              const DiscoverState.loading(),
              DiscoverState.loaded(
                  recommendedProducts: recommendedProductsEx,
                  recommendedStores: recommendedStoresEx)
            ]);

    blocTest(
        'should emit  ErrorState when getRecommendations returns a server error',
        build: () => DiscoverCubit(getDiscoverRepositoryForRecommendations(
            networkFailure: const NetworkFailure())),
        act: (DiscoverCubit cubit) => cubit.getRecommendations(),
        expect: () => [
              const DiscoverState.loading(),
              const DiscoverState.error('network-failure')
            ]);
  });
}
