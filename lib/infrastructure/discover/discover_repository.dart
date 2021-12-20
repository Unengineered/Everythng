import 'dart:convert';
import 'dart:developer';

import 'package:everythng/constants/url.dart';
import 'package:everythng/domain/discover/entities/recommended_store.dart';
import 'package:everythng/domain/discover/entities/recommended_product.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/discover/i_discover_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network_kit/network_kit.dart';

@Injectable(as: IDiscoverRepository)
class DiscoverRepository implements IDiscoverRepository {
  final NetworkKit networkKit;

  DiscoverRepository(this.networkKit);

  @override
  Future<Either<NetworkFailure, List<RecommendedProduct>>>
      getRecommendedProducts() async {
    final response =
        await networkKit.get(Uri.http(url, '/recommendations/products'));
    if (response.statusCode != 200) {
      log(response.statusCode.toString());
      log(response.body);
      return left(const NetworkFailure());
    }
    return right<NetworkFailure, List<RecommendedProduct>>(
        (json.decode(response.body) as List<dynamic>)
            .map((e) => RecommendedProduct.fromJson(e))
            .toList());
  }

  @override
  Future<Either<NetworkFailure, List<RecommendedStore>>>
      getRecommendedStores() async {
    final response =
        await networkKit.get(Uri.http(url, '/recommendations/stores'));
    if (response.statusCode != 200) {
      log(response.statusCode.toString());
      log(response.body);
      return left(const NetworkFailure());
    }
    return right<NetworkFailure, List<RecommendedStore>>(
        (json.decode(response.body) as List<dynamic>)
            .map((json) => RecommendedStore.fromJson(json))
            .toList());
  }
}
