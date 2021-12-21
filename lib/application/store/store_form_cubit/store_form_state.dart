part of 'store_form_cubit.dart';

@freezed
class StoreFormState with _$StoreFormState {
  const factory StoreFormState({
    required String storeName,
    required Uri storeLogo,
    required String storeTagline,
    required IdentityProof identityProof,
    required BankDetails bankDetails,
    required String? businessEmail,
    required Address address,
  }) = _StoreFormState;
  factory StoreFormState.initial() => StoreFormState(
      storeName: '',
      storeLogo: Uri(),
      storeTagline: '',
      identityProof: const IdentityProof(panCardNo: '', panCardImage: ''),
      bankDetails:
          const BankDetails(accountNumber: '', accountHolderName: '', ifscCode: ''),
      businessEmail: '',
      address: const Address(
          line1: '', line2: '', pincode: 000000, city: '', state: ''));
}
