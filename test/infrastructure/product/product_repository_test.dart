import 'package:dartz/dartz.dart';
import 'package:everythng/domain/product/entities/product_failure.dart';
import 'package:everythng/infrastructure/product/product_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../setup/product/constants.dart';
import '../../setup/product/product_network_kit_helper.dart';

void main(){

  setUpAll(() {
    registerFallbackValue(Uri.parse("https://www.everythng.in/"));
  });

  group('getDetailedThriftProduct', (){
    test('should catch NetworkException and return ProductFailure.networkFailure.', () async {
      //Arrange
      final networkKit = getNetworkKitForProduct(exception: true);
      final repo = ProductRepository(networkKit);

      //Act
      final result = await repo.getDetailedThriftProduct("product_id");

      //Assert
      expect(result, left(const ProductFailure.networkFailure()));
    });

    test('should return DetailedThriftProduct on successful GET request.', () async {
      //Arrange
      final networkKit = getNetworkKitForProduct();
      final repo = ProductRepository(networkKit);

      //Act
      final result = await repo.getDetailedThriftProduct("product_id");

      //Assert
      expect(result, right(DETAILED_THRIFT_PRODUCT));
    });

    test('should return ProductFailure.productUnavailable when a 404 response is received.', () async {
      //Arrange
      final networkKit = getNetworkKitForProduct(is404: true);
      final repo = ProductRepository(networkKit);

      //Act
      final result = await repo.getDetailedThriftProduct("product_id");

      //Assert
      expect(result, left(const ProductFailure.productUnavailable()));
    });

    test('should return ProductFailure.networkFailure when the future resolves with network disconnect error.', () async {
      //Arrange
      final networkKit = getNetworkKitForProduct(futureError: true);
      final repo = ProductRepository(networkKit);

      //Act
      final result = await repo.getDetailedThriftProduct("product_id");

      //Assert
      expect(result, left(const ProductFailure.networkFailure()));
    });
  });

}