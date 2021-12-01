import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_link.freezed.dart';
part 'store_link.g.dart';

@freezed
class StoreLink with _$StoreLink {
  const factory StoreLink(
      {required String id,
      required String name,
      required Uri picture,
      required Uri url,
      String? tagline}) = _StoreLink;

  factory StoreLink.fromJson(Map<String, dynamic> json) => _$StoreLinkFromJson(json);

}
