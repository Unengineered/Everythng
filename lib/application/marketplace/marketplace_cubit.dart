import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/marketplace/entities/marketplace.dart';
import 'package:everythng/domain/marketplace/entities/marketplace_failure.dart';
import 'package:everythng/infrastructure/marketplace/marketplace_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'marketplace_state.dart';
part 'marketplace_cubit.freezed.dart';

@lazySingleton
class MarketplaceCubit extends Cubit<MarketplaceState> {
  final MarketplaceRepository _marketplaceRepository;
  MarketplaceCubit(this._marketplaceRepository)
      : super(const MarketplaceState.initial());

  void switchToRenting() => _switch(const Marketplace.renting());
  void switchToThrifting() => _switch(const Marketplace.thrifting());
  void switchToBuying() => _switch(const Marketplace.buying());
  void switchToStore() => _switch(const Marketplace.store());
  void initialise() => _emitAccordingToRead();

  void _switch(Marketplace marketplace) {
    emit(MarketplaceState.page(marketplace));
    _save(marketplace);
  }

  Future<void> _save(Marketplace marketplace) =>
      _marketplaceRepository.saveMarketplace(marketplace);

  Either<MarketplaceFailure, Marketplace> _read() =>
      _marketplaceRepository.getSavedMarketplace();

  _emitAccordingToRead() {
    final saved = _read();
    saved.fold(
        (failure) => failure.map(
            noMarketplaceFound: (_) =>
                emit(const MarketplaceState.page(Marketplace.thrifting()))),
        (marketplace) => emit(MarketplaceState.page(marketplace)));
  }
}
