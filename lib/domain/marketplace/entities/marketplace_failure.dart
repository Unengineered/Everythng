import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_failure.freezed.dart';

@freezed
class MarketplaceFailure with _$MarketplaceFailure{
    const factory MarketplaceFailure.noMarketplaceFound() = _NoMarketplaceFound;
}