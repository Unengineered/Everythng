import 'dart:convert';
import 'dart:developer';

import 'package:everythng/constants/url.dart';
import 'package:everythng/domain/profile/entities/everythng_user.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/profile/i_profile_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network_kit/network_kit.dart';

@Injectable(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final NetworkKit networkKit;
  ProfileRepository(this.networkKit);

  @override
  Future<Either<NetworkFailure, EverythngUser>> getProfileData() async {
    final response = await networkKit.get(Uri.http(url, '/profile'));
    log(response.statusCode.toString());
    if (response.statusCode != 200) {
      if (response.statusCode == 404) {
        return left(const NetworkFailure.noProfileData());
      }
      return left(const NetworkFailure());
    }
    return right(EverythngUser.fromJson(json.decode(response.body)));
  }

  @override
  Future<Either<NetworkFailure, EverythngUser>> updateProfileData(
      {required EverythngUser everythngUser}) async {
    final response = await networkKit.put(Uri.http(url, '/profile'),
        body: json.encode(everythngUser.toJson()), headers: {"Content-Type": "application/json"});

    if (response.statusCode != 200) {
      return left(const NetworkFailure());
    }

    return right(EverythngUser.fromJson(json.decode(response.body)['profile']));
  }
}
