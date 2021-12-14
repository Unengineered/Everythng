part of 'marketplace_cubit.dart';

@freezed
class MarketplaceState with _$MarketplaceState{
    const factory MarketplaceState.initial() = _Initial;
    const factory MarketplaceState.page(Marketplace marketplace) = _Page;
}