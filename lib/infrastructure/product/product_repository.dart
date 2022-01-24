

import 'package:dartz/dartz.dart';
import 'package:everythng/domain/product/entities/detailed_thrift_product.dart';
import 'package:everythng/domain/product/entities/product_failure.dart';
import 'package:everythng/domain/product/i_product_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network_kit/network_kit.dart';

@lazySingleton
class ProductRepository implements IProductRepository{

  final NetworkKit _networkKit;
  ProductRepository(this._networkKit);

  @override
  Future<Either<ProductFailure, DetailedThriftProduct>> getDetailedThriftProduct(String id) async {
    try{
      final result = await _networkKit.get(Uri.parse("https://everythng.in/product/$id"));
      if(result.statusCode == 200){
        return right(DetailedThriftProduct.fromJson(result.body));
      }else {
        return left(const ProductFailure.productUnavailable());
      }
    } on NetworkKitException catch(_){
      return left(const ProductFailure.networkFailure());
    }
  }

}