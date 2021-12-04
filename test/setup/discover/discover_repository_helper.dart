import 'package:dartz/dartz.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:everythng/domain/discover/i_discover_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../constants.dart';

class MockDiscoverRepository extends Mock implements IDiscoverRepository {}

IDiscoverRepository getDiscoverRepositoryForRecommendations(
    {NetworkFailure? networkFailure}) {
  final service = MockDiscoverRepository();
  if (networkFailure == null) {
    when(() => service.getRecommendedProducts())
        .thenAnswer((invocation) async => right(recommendedProductsEx));
    when(() => service.getRecommendedStores())
        .thenAnswer((invocation) async => right(recommendedStoresEx));
  } else {
    when(() => service.getRecommendedProducts())
        .thenAnswer((invocation) async => left(const NetworkFailure()));
    when(() => service.getRecommendedStores())
        .thenAnswer((invocation) async => left(const NetworkFailure()));
  }
  return service;
}
