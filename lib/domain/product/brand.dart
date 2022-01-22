import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.freezed.dart';

@freezed
class Brand with _$Brand{
    const factory Brand({
      required String name,
      required Uri logo,
}) = _Brand;
}