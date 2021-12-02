import 'package:everythng/domain/discover/entities/recommended_product.dart';
import 'package:everythng/domain/discover/entities/store_link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommended_store.freezed.dart';
part 'recommended_store.g.dart';

@freezed
class RecommendedStore with _$RecommendedStore {
  const factory RecommendedStore(
      {required StoreLink storeLink,
      required List<RecommendedProduct> products}) = _RecommendedStore;

  factory RecommendedStore.fromJson(Map<String, dynamic> json) => _$RecommendedStoreFromJson(json);
}
