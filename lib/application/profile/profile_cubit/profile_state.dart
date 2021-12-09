part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState{
    const factory ProfileState.initial() = _Initial;
    const factory ProfileState.loaded({required EverythngUser everythngUser}) = _Loaded;
    const factory ProfileState.noData() = _NoData;
    const factory ProfileState.loading() = _Loading;
}