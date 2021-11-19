import 'package:fort_knox/fort_knox.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'everythng_user.freezed.dart';

@freezed
class EverythngUser with _$EverythngUser {
  const EverythngUser._();
  const factory EverythngUser({required String email, required String uid}) =
      _EverythngUser;

  factory EverythngUser.fromBaseUserAndDetails(BaseUser baseUser) =>
      EverythngUser(email: baseUser.email, uid: baseUser.uid);
}
