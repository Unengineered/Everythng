import 'package:bloc/bloc.dart';
import 'package:everythng/domain/product/entities/detailed_thrift_product.dart';
import 'package:everythng/domain/product/entities/product_failure.dart';
import 'package:everythng/domain/product/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_thrift_product_state.dart';
part 'detailed_thrift_product_cubit.freezed.dart';

class DetailedThriftProductCubit extends Cubit<DetailedThriftProductState> {
  final IProductRepository _repository;
  DetailedThriftProductCubit(this._repository)
      : super(const DetailedThriftProductState.initial());

  void getProduct(String id) async {
    emit(const DetailedThriftProductState.loading());
    final result = await _repository.getDetailedThriftProduct(id);
    result.fold((failure) {
      emit(DetailedThriftProductState.error(failure: failure));
      Future.delayed(const Duration(seconds: 2), () => getProduct(id));
    },
        (product) => emit(
            DetailedThriftProductState.loaded(detailedThriftProduct: product)));
  }
}
