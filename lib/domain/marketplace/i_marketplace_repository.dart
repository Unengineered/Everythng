import 'package:dartz/dartz.dart';
import 'package:everythng/domain/marketplace/entities/marketplace.dart';
import 'package:everythng/domain/marketplace/entities/marketplace_failure.dart';

abstract class IMarketplaceRepository{
  Future<void> saveMarketplace(Marketplace marketplace);
  Either<MarketplaceFailure,Marketplace> getSavedMarketplace();
}