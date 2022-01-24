import 'package:dartz/dartz.dart';
import 'package:everythng/domain/product/entities/product_failure.dart';
import 'package:everythng/infrastructure/product/product_repository.dart';
import 'package:mocktail/mocktail.dart';

import 'constants.dart';

class MockProductRepository extends Mock implements ProductRepository {
  int failAttempts;
  MockProductRepository({required this.failAttempts});
}

MockProductRepository getProductRepository(
    {ProductFailure? failure, int failAttempts = 1}) {
  final service = MockProductRepository(failAttempts: failAttempts);

  if (failure == null) {
    when(() => service.getDetailedThriftProduct(any()))
        .thenAnswer((invocation) async => right(DETAILED_THRIFT_PRODUCT));
  } else {
    when(() => service.getDetailedThriftProduct(any()))
        .thenAnswer((invocation) async {
      if(service.failAttempts-- > 0){
        return left(failure);
      }else{
        return right(DETAILED_THRIFT_PRODUCT);
      }
    });
  }

  return service;
}
