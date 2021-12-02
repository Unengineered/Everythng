import 'package:bloc/bloc.dart';
import 'package:everythng/domain/discover/entities/recommended_product.dart';
import 'package:everythng/domain/discover/entities/recommended_store.dart';
import 'package:everythng/domain/discover/i_discover_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_cubit.freezed.dart';

part 'discover_state.dart';

@Injectable()
class DiscoverCubit extends Cubit<DiscoverState> {
  final IDiscoverRepository _repository;

  DiscoverCubit(this._repository) : super(const DiscoverState.initialised());

  void getRecommendations() async {
    List<RecommendedProduct>? products;
    List<RecommendedStore>? stores;
    emit(const DiscoverState.loading());

    _repository.getRecommendedStores().then((result) => result.fold((l) {
          emit(const DiscoverState.error('network-error'));
          return;
        }, (values) => stores = values));

    _repository.getRecommendedProducts().then((result) => result.fold((l) {
          emit(const DiscoverState.error('network-error'));
          return;
        }, (values) => products = values));

    if (products != null && stores != null) {
      emit(DiscoverState.loaded(
          recommendedProducts: products!, recommendedStores: stores!));
    }
  }
}
