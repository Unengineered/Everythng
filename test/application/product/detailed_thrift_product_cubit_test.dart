import 'package:bloc_test/bloc_test.dart';
import 'package:everythng/application/product/detailed_thrift_product_cubit.dart';
import 'package:everythng/domain/product/entities/product_failure.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../setup/product/constants.dart';
import '../../setup/product/product_repository_helper.dart';


void main(){
  group('getProduct', (){
    blocTest<DetailedThriftProductCubit, DetailedThriftProductState>(
      'should emit loaded state when receiving a product.',
      build: () => DetailedThriftProductCubit(getProductRepository()),
      act: (DetailedThriftProductCubit cubit) {
        cubit.getProduct("product_id");
      },
      expect: () => <DetailedThriftProductState>[
        const DetailedThriftProductState.loading(),
        DetailedThriftProductState.loaded(detailedThriftProduct: DETAILED_THRIFT_PRODUCT)
      ],
    );

    test('should emit error state when product loading fails.', () async {
      //Arrange
      final repo = getProductRepository(failure: const ProductFailure.networkFailure());
      final cubit = DetailedThriftProductCubit(repo);

      //Act
      cubit.getProduct("id");

      //Assert
      expect(cubit.stream, emitsInAnyOrder([
        mayEmitMultiple(const DetailedThriftProductState.loading()),
        mayEmitMultiple(const DetailedThriftProductState.error(failure: ProductFailure.networkFailure())),
      ]));
    });

    blocTest<DetailedThriftProductCubit, DetailedThriftProductState>(
      'should retry getting product on NetworkFailure',
      build: () => DetailedThriftProductCubit(getProductRepository(failure: const ProductFailure.networkFailure(), failAttempts: 1)),
      act: (DetailedThriftProductCubit cubit) async {
        cubit.getProduct("product_id");
      },
      wait: const Duration(seconds: 4),
      expect: () => <DetailedThriftProductState>[
        const DetailedThriftProductState.loading(),
        const DetailedThriftProductState.error(failure: ProductFailure.networkFailure()),
        const DetailedThriftProductState.loading(),
        DetailedThriftProductState.loaded(detailedThriftProduct: DETAILED_THRIFT_PRODUCT)
      ],
    );
  }, skip: true);
}