import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace.freezed.dart';

@freezed
class Marketplace with _$Marketplace{
    const factory Marketplace.renting() = _Renting;
    const factory Marketplace.thrifting() = _Thrifting;
    const factory Marketplace.buying() = _Buying;
    const factory Marketplace.store() = _Store;
}