import 'package:bloc/bloc.dart';
import 'package:everythng/application/profile/profile_cubit/profile_cubit.dart';
import 'package:everythng/domain/profile/entities/address.dart';
import 'package:everythng/domain/profile/entities/everythng_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_form_state.dart';
part 'profile_form_cubit.freezed.dart';

@Injectable()
class ProfileFormCubit extends Cubit<ProfileFormState> {
  final ProfileCubit _profileCubit;

  ProfileFormCubit(this._profileCubit) : super(ProfileFormState.initial());

  void setFirstName(String firstName) =>
      emit(state.copyWith(firstName: firstName));

  void setLastName(String lastName) => emit(state.copyWith(lastName: lastName));

  void setPhoneNumber(String phoneNumber) =>
      emit(state.copyWith(phoneNumber: phoneNumber));

  void setAddress(Address address) => emit(state.copyWith(address: address));

  void setProfileData() async {
    final result = await _profileCubit.setProfileData(EverythngUser(
        firstname: state.firstName,
        lastname: state.lastName,
        phone: state.phoneNumber,
        picture: null,
        addresses: [state.address],
        storeLink: null));
  }
}
