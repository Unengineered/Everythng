import 'package:dartz/dartz.dart';
import 'package:everythng/domain/marketplace/entities/marketplace.dart';
import 'package:everythng/domain/marketplace/entities/marketplace_failure.dart';
import 'package:everythng/domain/marketplace/i_marketplace_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: IMarketplaceRepository)
class MarketplaceRepository implements IMarketplaceRepository {
  final SharedPreferences _sharedPreferences;

  MarketplaceRepository(this._sharedPreferences);

  @override
  Either<MarketplaceFailure, Marketplace> getSavedMarketplace() {
    final name = _sharedPreferences.getString('marketplace');
    if(name == null) return left(const MarketplaceFailure.noMarketplaceFound());

    switch(name){
      case 'renting' : return right(const Marketplace.renting());
      case 'store' : return right(const Marketplace.store());
      case 'buying' : return right(const Marketplace.buying());
      case 'thrifting' : return right(const Marketplace.thrifting());
      default: return left(const MarketplaceFailure.noMarketplaceFound());
    }
  }

  @override
  Future<void> saveMarketplace(Marketplace marketplace) async {
    marketplace.map(
        renting: (_) => _save('renting'),
        thrifting: (_) => _save('thrifting'),
        buying: (_) => _save('buying'),
        store: (_) => _save('store'));
  }

  Future<void> _save(String name) =>
      _sharedPreferences.setString('marketplace', name);
}
