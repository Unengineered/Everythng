import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/core/store_link.dart';
import 'package:everythng/domain/product/entities/detailed_thrift_product.dart';
import 'package:everythng/domain/product/entities/product_failure.dart';
import 'package:everythng/domain/product/i_product_repository.dart';
import 'package:everythng/domain/store/entities/store_failure.dart';
import 'package:everythng/domain/store/i_store_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'today_state.dart';
part 'today_cubit.freezed.dart';

@singleton
class TodayCubit extends Cubit<TodayState> {
  final IStoreRepository _storeRepository;
  final IProductRepository _productRepository;

  TodayCubit(this._storeRepository, this._productRepository) : super(const TodayState.initial());

  void initialise(){
    _load();
  }

  void reload(){
    _load();
  }

  void _load(){
    _loadProducts();
    _loadStores();
  }

  void _loadStores() =>
    _storeRepository.getStoreLinkList().then(_handleStoreLinks);

  void _loadProducts() =>
    _productRepository.getDetailedThriftProducts().then(_handleDetailedThriftProducts);

  void _handleStoreLinks(Either<StoreFailure, List<StoreLink>> value){
    value.fold(
            (failure) {
              state.maybeMap(loaded: (state) {
                emit(state.copyWith(stores: left(failure)));
              }, orElse: (){
                emit(TodayState.loaded(stores: left(failure)));
              });
            },
            (stores) {
              state.maybeMap(loaded: (state){
                emit(state.copyWith(stores: right(stores)));
              }, orElse: (){
                emit(TodayState.loaded(stores: right(stores)));
              });
            }
    );
  }
  void _handleDetailedThriftProducts(Either<ProductFailure, List<DetailedThriftProduct>> value){
    value.fold(
            (failure) {
          state.maybeMap(loaded: (state) {
            emit(state.copyWith(products: left(failure)));
          }, orElse: (){
            emit(TodayState.loaded(products: left(failure)));
          });
        },
            (products) {
          state.maybeMap(loaded: (state){
            emit(state.copyWith(products: right(products)));
          }, orElse: (){
            emit(TodayState.loaded(products: right(products)));
          });
        }
    );

  }
}
