import 'package:everythng/domain/discover/entities/recommended_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommended_store.freezed.dart';
part 'recommended_store.g.dart';

@freezed
class RecommendedStore with _$RecommendedStore {
  const factory RecommendedStore(
      {
      required String id,
      required String name,
      required Uri picture,
      String? tagline,
      required List<RecommendedProduct> products,
      }) = _RecommendedStore;

  factory RecommendedStore.fromJson(Map<String, dynamic> json) =>
      _$RecommendedStoreFromJson(json);
}
