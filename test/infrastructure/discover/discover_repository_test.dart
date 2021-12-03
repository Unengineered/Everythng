import 'package:dartz/dartz.dart';
import 'package:everythng/constants/url.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../setup/constants.dart';
import '../../setup/discover/discovery_repository_impl_helper.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(Uri.parse(url));
  });

  group('getRecommendedProducts', () {

    test('Should return List<RecommendedProduct> on successful get request',
        () async {
      //Arrange
      final discoverRepository = getDiscoverRepository();
      var list = [];
      //Act
      final result = await discoverRepository.getRecommendedProducts();
      result.fold((l) => null, (r) {
        list = r;
      });
      //Assert
      expect(list, recommendedProductsEx);
    });

    test('Should return NetworkFailure.serverError on unsuccessful get request',
        () async {
      //Arrange
      final discoverRepository = getDiscoverRepository(networkFailure: true);
      //Act
      final result = await discoverRepository.getRecommendedProducts();
      //Assert
      expect(result, left(const NetworkFailure()));
    });
  });

  group('getRecommendedStores', () {
    
    test('Should return List<RecommendedStore> on successful get request',
        () async {
      //Arrange
      final discoverRepository = getDiscoverRepository();
       var list = [];
      //Act
      final result = await discoverRepository.getRecommendedStores();
      result.fold((l) => null, (r) {
         list = r;
      });
      //Assert
      expect(list, recommendedStoresEx);
    });
    test('Should return NetworkFailure.serverError on unsuccessful get request',
        () async {
      //Arrange
      final discoverRepository = getDiscoverRepository(networkFailure: true);
      //Act
      final result = await discoverRepository.getRecommendedStores();
      //Assert
      expect(result, left(const NetworkFailure()));
    });
  });
}
