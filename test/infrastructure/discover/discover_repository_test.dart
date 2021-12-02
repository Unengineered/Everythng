import 'package:dartz/dartz.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:everythng/domain/discover/entities/recommended_product.dart';
import 'package:everythng/domain/discover/entities/recommended_store.dart';
import 'package:everythng/infrastructure/discover/discover_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_kit/network_kit.dart';

import '../../setup/constants.dart';

class MockNetworkKit extends Mock implements NetworkKit {}

void main() {
  setUpAll(() {
    registerFallbackValue(Uri.parse(url));
  });
  final mockNetworkKit = MockNetworkKit();
  final discoveRepo = DiscoverRepository(mockNetworkKit);
  group('getRecommendedProducts', () {
    test('Should return List<ReccomendedProduct> on succesful get request',
        () async{
          //Arrange 
          when(()=> mockNetworkKit.get(any())).thenAnswer((invocation) async => Response(recommendedProductJson, 200));
          //Act
          final result = await discoveRepo.getRecommendedProducts();
          //Assert
          print(right<NetworkFailure,List<RecommendedProduct>>(recommendedProductsEx) == result);
          expect(result, right<NetworkFailure,List<RecommendedProduct>>(recommendedProductsEx));

        });

    test('Should return NetworkFailure.serverError on unsuccessful get request',
        () async{
          //Arrange 
          when(()=> mockNetworkKit.get(any())).thenAnswer((invocation) async => Response('recommendedProductJson', 400));
          //Act
          final result = await discoveRepo.getRecommendedProducts();
          //Assert
          expect(result, left(const NetworkFailure()));

        });
  });

  group('getRecommendedStores', () {
    test(
        'Should return List<ReccomendedStore> on succesful get request', () async{
          //Arrange 
          when(()=> mockNetworkKit.get(any())).thenAnswer((invocation) async => Response(recommendedStoreJson, 200));
          //Act
          final result = await discoveRepo.getRecommendedStores();
          //Assert
          // print(right<NetworkFailure,List<RecommendedStore>>(recommendedStoresEx) == result);
          // assert(recommendedStoresEx is List<RecommendedStore> );
          expect(result, Right<NetworkFailure,List<RecommendedStore>>(recommendedStoresEx));
        });
    test('Should return NetworkFailure.serverError on unsuccessful get request',
        () async{
          //Arrange 
          when(()=> mockNetworkKit.get(any())).thenAnswer((invocation) async => Response('recommendedStoreJson', 400));
          //Act
          final result = await discoveRepo.getRecommendedStores();
          //Assert
          expect(result, left(const NetworkFailure()));
        });
  });
}

