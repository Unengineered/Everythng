import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.freezed.dart';
part 'brand.g.dart';

@freezed
class Brand with _$Brand{
    const factory Brand({
      required String name,
      required Uri logo,
}) = _Brand;

    factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}