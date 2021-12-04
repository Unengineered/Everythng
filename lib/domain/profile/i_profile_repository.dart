import 'package:dartz/dartz.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:everythng/domain/profile/entities/everythng_user.dart';

abstract class IProfileRepository{
  Future<Either<NetworkFailure,EverythngUser>> getProfileData();
  Future<Either<NetworkFailure,EverythngUser>> updateProfileData({required Map<String,dynamic> profileData});
}