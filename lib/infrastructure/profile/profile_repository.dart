import 'dart:convert';

import 'package:everythng/constants/url.dart';
import 'package:everythng/domain/profile/entities/address.dart';
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

  //TODO: Remove this
  final everythngUserConst = EverythngUser(
      firstname: 'firstname',
      lastname: 'lastname',
      phone: '9920644868',
      picture: Uri.parse('www.google.com'),
      addresses: [
        const Address(
            line1: 'line1',
            line2: 'line2',
            pincode: 400705,
            city: 'city',
            state: 'state')
      ],
      storeLink: null);

  @override
  Future<Either<NetworkFailure, EverythngUser>> getProfileData() async {
    //TODO: Turn off fake API
    return right(everythngUserConst);
    //return left(const NetworkFailure.noProfileData());

    final response = await networkKit.get(Uri.http(url, '/profile/'));

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
    final response = await networkKit.put(Uri.http(url, '/profile/update'),
        body: everythngUser.toJson());
    if (response.statusCode != 200) {
      return left(const NetworkFailure());
    }
    return right(EverythngUser.fromJson(json.decode(response.body)));
  }
}
