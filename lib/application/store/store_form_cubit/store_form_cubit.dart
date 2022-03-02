// import 'package:bloc/bloc.dart';
// import 'package:everythng/application/store/store_cubit/store_page_cubit.dart';
// import 'package:everythng/domain/profile/entities/address.dart';
// import 'package:everythng/domain/store/entities/bank_details.dart';
// import 'package:everythng/domain/store/entities/everythng_store.dart';
// import 'package:everythng/domain/store/entities/identity_proof.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:injectable/injectable.dart';
//
// part 'store_form_state.dart';
// part 'store_form_cubit.freezed.dart';
//
// @Injectable()
// class StoreFormCubit extends Cubit<StoreFormState> {
//   final StorePageCubit _storeCubit;
//   StoreFormCubit(this._storeCubit) : super(StoreFormState.initial());
//   void setStoreName(String storeName) =>
//       emit(state.copyWith(storeName: storeName));
//   void setStoreLogo(XFile storeLogo) async => emit(state.copyWith(
//       storeLogo: Uri.parse(await _storeCubit.getImageUrl('logo', storeLogo))));
//   void setStoreTagline(String storeTagline) =>
//       emit(state.copyWith(storeTagline: storeTagline));
//   void setIdentityProof(XFile panCardImage, String panCardNo) async =>
//       emit(state.copyWith(
//           identityProof: IdentityProof(
//         panCardNo: panCardNo,
//         panCardImage:
//             await _storeCubit.getImageUrl('pancard-$panCardNo', panCardImage),
//       )));
//   void setBankDetails(BankDetails bankDetails) =>
//       emit(state.copyWith(bankDetails: bankDetails));
//   void setBuisnessEmail(String? buisnessEmail) =>
//       emit(state.copyWith(businessEmail: buisnessEmail));
//   void setAddress(Address address) => emit(state.copyWith(address: address));
//   // void setStore() {
//   //   _storeCubit.setStore(Store(
//   //       storeName: state.storeName,
//   //       storeLogo: state.storeLogo,
//   //       storeTagline: state.storeTagline,
//   //       identityProof: state.identityProof,
//   //       bankDetails: state.bankDetails,
//   //       businessEmail: state.businessEmail,
//   //       address: state.address));
//   // }
// }
