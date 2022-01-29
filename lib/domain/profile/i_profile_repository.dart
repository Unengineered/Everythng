import 'package:dartz/dartz.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:everythng/domain/profile/entities/everythng_user.dart';

abstract class IProfileRepository{
  Future<Either<NetworkFailure,EverythngUser>> getProfileData();
  void updateProfileData({required EverythngUser everythngUser});
  Stream<EverythngUser> getProfileStream();
}