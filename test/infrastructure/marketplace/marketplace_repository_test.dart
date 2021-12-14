import 'package:dartz/dartz.dart';
import 'package:everythng/domain/marketplace/entities/marketplace.dart';
import 'package:everythng/domain/marketplace/entities/marketplace_failure.dart';
import 'package:everythng/infrastructure/marketplace/marketplace_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../setup/marketplace/shared_pref_helper.dart';

void main() {
  group('saveMarketplace', () {
    test('should save given marketplace using shared preferences', () async {
      //Arrange
      final pref = getSharedPreferences();
      final repo = MarketplaceRepository(pref);

      //Act
      await repo.saveMarketplace(const Marketplace.renting());

      //Verify
      verify(() => pref.setString('marketplace', 'renting'));
    });
  });
  group('getMarketplace', () {
    test(
        'should return MarketplaceFailure.noMarketPlaceFound when no saved marketplace is found',
        () {
      //Arrange
      final repo = MarketplaceRepository(getSharedPreferences());

      //Act
      final result = repo.getSavedMarketplace();

      expect(result, left(const MarketplaceFailure.noMarketplaceFound()));
    });

    [
      {"name": 'renting', "result": const Marketplace.renting()},
      {"name": 'thrifting', "result": const Marketplace.thrifting()},
      {"name": 'buying', "result": const Marketplace.buying()},
      {"name": 'store', "result": const Marketplace.store()},
    ]
        .map((marketplace) => test(
                'should return ${marketplace['name']} marketplace when ${marketplace['name']} is found in shared preferences',
                () {
              //Arrange
              final repo = MarketplaceRepository(getSharedPreferences(
                  marketplace: marketplace['name'] as String));

              //Act
              final result = repo.getSavedMarketplace();

              //Assert
              expect(result, right(marketplace['result']));
            }))
        .toList();
  });
}
