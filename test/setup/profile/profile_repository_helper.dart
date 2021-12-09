import 'package:dartz/dartz.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:everythng/domain/profile/entities/everythng_user.dart';
import 'package:everythng/infrastructure/profile/profile_repository.dart';
import 'package:mocktail/mocktail.dart';


class MockProfileRepository extends Mock implements ProfileRepository {}

ProfileRepository getProfileRepository(
    {EverythngUser? user, NetworkFailure? networkFailure}) {
  final service = MockProfileRepository();

  if (networkFailure == null) {
    when(() => service.updateProfileData(
            everythngUser: any(named: 'everythngUser')))
        .thenAnswer((invocation) async =>
            right(invocation.namedArguments[const Symbol('everythngUser')]));

    if (user != null) {
      when(() => service.getProfileData())
          .thenAnswer((invocation) async => right(user));
    } else {
      when(() => service.getProfileData()).thenAnswer(
          (invocation) async => left(const NetworkFailure.noProfileData()));
    }
  } else {
    when(() => service.getProfileData())
        .thenAnswer((invocation) async => left(const NetworkFailure()));

    when(() => service.updateProfileData(
            everythngUser: any(named: 'everythngUser')))
        .thenAnswer((invocation) async => left(networkFailure));
  }

  return service;
}
