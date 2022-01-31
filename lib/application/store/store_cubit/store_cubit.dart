import 'package:bloc/bloc.dart';
import 'package:everythng/domain/store/entities/everythng_store.dart';
import 'package:everythng/domain/store/entities/store_failure.dart';
import 'package:everythng/domain/store/i_store_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'store_state.dart';
part 'store_cubit.freezed.dart';

@singleton
class StoreCubit extends Cubit<StoreState> {
  final IStoreRepository _repository;
  StoreCubit(this._repository) : super(const StoreState.initial());

  void getStore({required String storeId}) async {
    final result = await _repository.getStore(storeId: storeId);
    result.fold((failure) => emit(StoreState.error(failure)),
        (store) => emit(StoreState.loaded(store: store)));
  }

  void setStore(Store store) async {
    final result = await _repository.setStore(store: store);
    result.fold((failure) => emit(StoreState.error(failure)),
        (store) => emit(StoreState.loaded(store: store)));
  }

  Future<String> getImageUrl(String imageType, XFile image) async {
    late String imageUrl;
    final result =
        await _repository.uploadImage(imageInfo: imageType, file: image);
    result.fold((failure) => emit(StoreState.error(failure)), (url) {
      imageUrl = url;
    });
    return imageUrl;
  }
}
