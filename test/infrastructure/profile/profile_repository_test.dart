import 'package:dartz/dartz.dart';
import 'package:everythng/core/api/url.dart';
import 'package:everythng/domain/core/network_failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../setup/constants.dart';
import '../../setup/profile/profile_repository_impl_helper.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(Uri.parse(url));
  });

  group('getProfileData', () {

    test('Should return EverythngUser on successful get request',
        () async {
      //Arrange
      final profileRepository = getProfileRepository();
      //Act
      final result = await profileRepository.getProfileData();
      //Assert
      expect(result, right(everythngUser));
    });

    test('should return NetworkFailure.noProfileData on 404 response', () async {
      //Arrange
      final profileRepository = getProfileRepository(failureCode: 404);

      //Act
      final result = await profileRepository.getProfileData();

      //Assert
      expect(result, left(const NetworkFailure.noProfileData()));
    });

    test('Should return NetworkFailure.serverError on unsuccessful get request',
        () async {
      //Arrange
      final profileRepository = getProfileRepository(failureCode: 400);
      //Act
      final result = await profileRepository.getProfileData();
      //Assert
      expect(result, left(const NetworkFailure()));
    });
  });

  group('updateProfileData', () {
    
    test('Should return EverythngUser on successful post request',
        () async {
      //Arrange
      final profileRepository = getProfileRepository();
      //Act
      final result = await profileRepository.updateProfileData(everythngUser: everythngUserConst);
      //Assert
      expect(result, right(everythngUser));
    });
    test('Should return NetworkFailure.serverError on unsuccessful post request',
        () async {
      //Arrange
      final profileRepository = getProfileRepository(failureCode: 400);
      //Act
      final result = await profileRepository.updateProfileData(everythngUser: everythngUserConst);
      //Assert
      expect(result, left(const NetworkFailure()));
    });
  });
 }
