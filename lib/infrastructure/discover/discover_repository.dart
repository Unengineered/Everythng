import 'package:everythng/core/api/fake_discover_api.dart';
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
    //TODO: Switch fake API off
    return right(recommendedProductsEx);

    // try{
    //   final response = await networkKit.get(Uri.http(url, '/recommendations/product'));
    //   if (response.statusCode != 200) {
    //     log(response.statusCode.toString());
    //     log(response.body.toString());
    //     return left(const NetworkFailure());
    //   }
    //   return right<NetworkFailure, List<RecommendedProduct>>(
    //       (response.body["recommended_products"] as List<dynamic>)
    //           .map((e) => RecommendedProduct.fromJson(e))
    //           .toList());
    // } on NetworkKitException catch (_){
    //   log('caught networkKit exception');
    //   return left(const NetworkFailure());
    // }
  }

  @override
  Future<Either<NetworkFailure, List<RecommendedStore>>>
      getRecommendedStores() async {
    //Fake API
    return right(recommendedStoresEx);

    //   try{
    //     final response =
    //     await networkKit.get(Uri.http(url, '/recommendations/store'));
    //     if (response.statusCode != 200) {
    //       log(response.statusCode.toString());
    //       log(response.body.toString());
    //       return left(const NetworkFailure());
    //     }
    //     return right<NetworkFailure, List<RecommendedStore>>(
    //         (response.body['recommended_stores'] as List<dynamic>)
    //             .map((json) => RecommendedStore.fromJson(json))
    //             .toList());
    //   } on NetworkKitException catch (_){
    //     log('caught networkKit exception');
    //     return left(const NetworkFailure());
    //   }
  }
}
