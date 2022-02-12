import 'package:dartz/dartz.dart';
import 'package:everythng/core/api/url.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:everythng/domain/profile/entities/everythng_user.dart';
import 'package:everythng/domain/profile/i_profile_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network_kit/network_kit.dart';

@Injectable(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final NetworkKit networkKit;
  ProfileRepository(this.networkKit);

  @override
  Future<Either<NetworkFailure, EverythngUser>> getProfileData() async {
    //TODO: remove fake getProfileData API.
    // return right(const EverythngUser(
    //     firstname: "advait",
    //     lastname: "bansode",
    //     phone: "9082322163",
    //     addresses: [],
    //     storeLink: null));

    try {
      final response = await networkKit.get(Uri.http(url, '/profile'));
      if (response.statusCode != 200) {
        if (response.statusCode == 404) {
          return left(const NetworkFailure.noProfileData());
        }
        return left(const NetworkFailure());
      }
      return right(EverythngUser.fromJson(response.body));
    } on NetworkKitException catch (_) {
      return left(const NetworkFailure());
    }
  }

  @override
  void updateProfileData({required EverythngUser everythngUser}) async {
    networkKit.send(
        system: "profile",
        function: "put_profile",
        headers: {},
        body: everythngUser.toJson(),
        ack: (data) {});
  }

  @override
  Stream<EverythngUser> getProfileStream() async* {
    await for (final message in networkKit.subscribe('profile')) {
      if (message.function == 'updated_profile') {
        yield EverythngUser.fromJson(message.body);
      }
    }
  }
}
