import 'package:bloc/bloc.dart';
import 'package:everythng/domain/discover/entities/recommended_product.dart';
import 'package:everythng/domain/discover/entities/recommended_store.dart';
import 'package:everythng/domain/discover/i_discover_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_cubit.freezed.dart';
part 'discover_state.dart';

@lazySingleton
class DiscoverCubit extends Cubit<DiscoverState> {
  final IDiscoverRepository _repository;

  DiscoverCubit(this._repository) : super(const DiscoverState.initialised());

  void getRecommendations() async {
    List<RecommendedProduct>? products;
    List<RecommendedStore>? stores;

    bool error = false;
    emit(const DiscoverState.loading());

    final storeResult = await _repository.getRecommendedStores();
    storeResult.fold((l) {
      emit(const DiscoverState.error('network-failure'));
      error = true;
    }, (values) => stores = values);

    final productResult = await _repository.getRecommendedProducts();
    productResult.fold((l) {
      emit(const DiscoverState.error('network-failure'));
      error = true;
    }, (values) => products = values);

    if (products != null && stores != null) {
      emit(DiscoverState.loaded(
          recommendedProducts: products!, recommendedStores: stores!));
    } else {
      if (!error) emit(const DiscoverState.error('error'));
    }
  }
}
