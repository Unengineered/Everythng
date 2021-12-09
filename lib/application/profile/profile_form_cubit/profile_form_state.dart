part of 'profile_form_cubit.dart';

@freezed
class ProfileFormState with _$ProfileFormState {
  const factory ProfileFormState({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required Address address,
  }) = _ProfileFormState;

  factory ProfileFormState.initial() => const ProfileFormState(
      firstName: '',
      lastName: '',
      phoneNumber: '',
      address:
          Address(line1: '', line2: '', pincode: 000000, city: '', state: ''));
}
