import 'package:dartz/dartz.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:everythng/domain/discover/entities/recommended_product.dart';
import 'package:everythng/domain/discover/entities/recommended_store.dart';

abstract class IDiscoverRepository{
  Future<Either<NetworkFailure,List<RecommendedProduct>>> getRecommendedProducts();
  Future<Either<NetworkFailure,List<RecommendedStore>>> getRecommendedStores();
}

