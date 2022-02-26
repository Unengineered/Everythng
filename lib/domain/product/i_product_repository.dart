import 'package:dartz/dartz.dart';
import 'package:everythng/domain/product/entities/detailed_thrift_product.dart';
import 'package:everythng/domain/product/entities/product_failure.dart';

abstract class IProductRepository{
  Future<Either<ProductFailure, DetailedThriftProduct>> getDetailedThriftProduct(String id);
  Future<Either<ProductFailure, List<DetailedThriftProduct>>> getDetailedThriftProducts();
}