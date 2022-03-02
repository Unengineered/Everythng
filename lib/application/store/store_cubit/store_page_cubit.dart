import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/core/store_link.dart';
import 'package:everythng/domain/product/entities/detailed_thrift_product.dart';
import 'package:everythng/domain/product/entities/product_failure.dart';
import 'package:everythng/domain/product/i_product_repository.dart';
import 'package:everythng/domain/store/entities/store_failure.dart';
import 'package:everythng/domain/store/i_store_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'store_page_state.dart';
part 'store_page_cubit.freezed.dart';

@injectable
class StorePageCubit extends Cubit<StorePageState> {
  final IStoreRepository _storeRepository;
  final IProductRepository _productRepository;
  StorePageCubit(this._storeRepository, this._productRepository)
      : super(const StorePageState.initial());

  // void getStore({required String storeId}) async {
  //   final result = await _storeRepository.getStore(storeId: storeId);
  //   result.fold((failure) => emit(StoreState.error(failure)),
  //       (store) => emit(StoreState.loaded(store: store)));
  // }
  //
  // void setStore(Store store) async {
  //   final result = await _storeRepository.setStore(store: store);
  //   result.fold((failure) => emit(StoreState.error(failure)),
  //       (store) => emit(StoreState.loaded(store: store)));
  // }

  Future<String> getImageUrl(String imageType, XFile image) async {
    late String imageUrl;
    final result =
        await _storeRepository.uploadImage(imageInfo: imageType, file: image);
    result.fold((failure) => emit(StorePageState.error(failure)), (url) {
      imageUrl = url;
    });
    return imageUrl;
  }

  void initialise({StoreLink? storeLink, String? id}) {
    if (storeLink != null) {
      emit(StorePageState.loaded(storeLink: right(storeLink)));
      id = storeLink.id;
    }

    if (id != null) {
      _productRepository.getDetailedThriftProductsByStore(id).then((result) {
        result.fold(
            (failure) => state.maybeMap(loaded: (state) {
                  emit(state.copyWith(storeProducts: left(failure)));
                }, orElse: () {
                  emit(StorePageState.loaded(storeProducts: left(failure)));
                }),
            (products) => state.maybeMap(loaded: (state) {
                  emit(state.copyWith(storeProducts: right(products)));
                }, orElse: () {
                  emit(StorePageState.loaded(storeProducts: right(products)));
                }));
      });
    }
  }
}
