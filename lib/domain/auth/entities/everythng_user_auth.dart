import 'package:fort_knox/fort_knox.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'everythng_user_auth.freezed.dart';

@freezed
class EverythngUserA with _$EverythngUserA {
  const EverythngUserA._();
  const factory EverythngUserA({required String email, required String uid}) =
      _EverythngUserA;


  factory EverythngUserA.fromBaseUserAndDetails(BaseUser baseUser) =>
      EverythngUserA(email: baseUser.email, uid: baseUser.uid);
}
