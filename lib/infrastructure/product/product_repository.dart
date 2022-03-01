import 'package:dartz/dartz.dart';
import 'package:everythng/domain/product/entities/detailed_thrift_product.dart';
import 'package:everythng/domain/product/entities/product_failure.dart';
import 'package:everythng/domain/product/i_product_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network_kit/network_kit.dart';

@Singleton(as: IProductRepository, env: ["test", "dev"])
class ProductRepository implements IProductRepository {
  final NetworkKit _networkKit;
  ProductRepository(this._networkKit);

  @override
  Future<Either<ProductFailure, DetailedThriftProduct>>
      getDetailedThriftProduct(String id) async {
    try {
      final result =
          await _networkKit.get(Uri.parse("https://everythng.in/product/$id"));
      if (result.statusCode == 200) {
        return right(DetailedThriftProduct.fromJson(result.body));
      } else {
        return left(const ProductFailure.productUnavailable());
      }
    } on NetworkKitException catch (_) {
      return left(const ProductFailure.networkFailure());
    }
  }

  @override
  Future<Either<ProductFailure, List<DetailedThriftProduct>>>
      getDetailedThriftProducts() async {
    //await Future.delayed(const Duration(seconds: 2));
    //return left(const ProductFailure.productUnavailable());

    try {
      return _networkKit
          .get(Uri.parse("https://www.everything.com/product"))
          .then((response) {
        return right((response.body["detailed_thrift_products"]!
                as List<Map<String, dynamic>>)
            .map((product) => DetailedThriftProduct.fromJson(product))
            .toList());
      });
    } on NetworkKitException catch (_) {
      return left(const ProductFailure.networkFailure());
    }

  }

  @override
  Future<Either<ProductFailure, List<DetailedThriftProduct>>>
      getDetailedThriftProductsByStore(String storeId) async {
    //await Future.delayed(const Duration(seconds: 2));
    // return left(const ProductFailure.productUnavailable());

    try {
      return _networkKit
          .get(Uri.https("www.everything.com", "product", {"store_id": storeId}))
          .then((response) {
        return right((response.body["detailed_thrift_products"]!
        as List<Map<String, dynamic>>)
            .map((product) => DetailedThriftProduct.fromJson(product))
            .toList());
      });
    } on NetworkKitException catch (_) {
      return left(const ProductFailure.networkFailure());
    }
  }
}
