import 'package:dartz/dartz.dart';
import 'package:everythng/domain/marketplace/entities/marketplace.dart';
import 'package:everythng/domain/marketplace/entities/marketplace_failure.dart';
import 'package:everythng/infrastructure/marketplace/marketplace_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockMarketplaceRepository extends Mock implements MarketplaceRepository {}

MarketplaceRepository getMarketplaceRepository({Marketplace? marketplace}) {
  final service = MockMarketplaceRepository();

  when(() => service.saveMarketplace(any()))
      .thenAnswer((invocation) async => Future.value());

  when(() => service.getSavedMarketplace()).thenReturn(marketplace != null
      ? right(marketplace)
      : left(const MarketplaceFailure.noMarketplaceFound()));

  return service;
}
