import 'package:bloc_test/bloc_test.dart';
import 'package:everythng/application/marketplace/marketplace_cubit.dart';
import 'package:everythng/domain/marketplace/entities/marketplace.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../setup/marketplace/marketplace_repository_helper.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(const Marketplace.thrifting());
  });

  group('constructor', () {
    blocTest(
      'should emit last saved marketplace on launch if stored marketplace is found',
      build: () => MarketplaceCubit(
          getMarketplaceRepository(marketplace: const Marketplace.renting())),
      act: (MarketplaceCubit cubit) => cubit.initialise(),
      expect: () => [const MarketplaceState.page(Marketplace.renting())],
    );

    blocTest(
        'should emit thrifting marketplace on launch if stored marketplace is not found',
        build: () => MarketplaceCubit(getMarketplaceRepository()),
        act: (MarketplaceCubit cubit) => cubit.initialise(),
        expect: () => [const MarketplaceState.page(Marketplace.thrifting())]);
  });

  group('switching marketplace states', () {
    [
      {"name": 'renting', "result": const Marketplace.renting()},
      {"name": 'thrifting', "result": const Marketplace.thrifting()},
      {"name": 'buying', "result": const Marketplace.buying()},
      {"name": 'store', "result": const Marketplace.store()},
    ]
        .map((marketplace) => blocTest(
            'should emit ${marketplace['name']} state when switch to ${marketplace['name']} is called',
            build: () => MarketplaceCubit(getMarketplaceRepository(
                marketplace: marketplace['result'] as Marketplace)),
            act: (MarketplaceCubit cubit) {
              switch (marketplace['name']) {
                case 'renting':
                  cubit.switchToRenting();
                  break;
                case 'thrifting':
                  cubit.switchToThrifting();
                  break;
                case 'buying':
                  cubit.switchToBuying();
                  break;
                case 'store':
                  cubit.switchToStore();
                  break;
              }
            },
            expect: () =>
                [MarketplaceState.page(marketplace['result'] as Marketplace)]))
        .toList();

    [
      {"name": 'renting', "result": const Marketplace.renting()},
      {"name": 'thrifting', "result": const Marketplace.thrifting()},
      {"name": 'buying', "result": const Marketplace.buying()},
      {"name": 'store', "result": const Marketplace.store()},
    ]
        .map((marketplace) => test(
            'should save ${marketplace['name']} in shared preferences when switched to ${marketplace['name']} ',
            () async {
              //Arrange
              final repo = getMarketplaceRepository();
              final cubit = MarketplaceCubit(repo);

              //Act
              switch (marketplace['name']) {
                case 'renting':
                  cubit.switchToRenting();
                  break;
                case 'thrifting':
                  cubit.switchToThrifting();
                  break;
                case 'buying':
                  cubit.switchToBuying();
                  break;
                case 'store':
                  cubit.switchToStore();
                  break;
              }

              //Assert
              verify(() => repo.saveMarketplace(marketplace['result'] as Marketplace));
            }))
        .toList();
  });
}
