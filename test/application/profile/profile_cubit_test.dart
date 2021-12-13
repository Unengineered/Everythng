import 'package:bloc_test/bloc_test.dart';
import 'package:everythng/application/profile/profile_cubit/profile_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../setup/auth/cubit/auth_cubit_helper.dart';
import '../../setup/constants.dart';
import '../../setup/profile/profile_repository_helper.dart';

void main() {

  setUpAll(() {
    registerFallbackValue(everythngUserConst);
  });

  group('getProfileData', () {
    blocTest(
        'should get profile data and emit loaded state if profile data is found',
        build: () => ProfileCubit(getAuthCubitForStateChanges(),
            getProfileRepository(user: everythngUserConst)),
        act: (ProfileCubit cubit) => cubit.getProfileData(),
        expect: () =>
            [ProfileState.loaded(everythngUser: everythngUserConst)]);

    blocTest(
      'should get profile data and emit noData state if profile data is not found',
      build: () =>
          ProfileCubit(getAuthCubitForStateChanges(), getProfileRepository()),
      act: (ProfileCubit cubit) => cubit.getProfileData(),
      expect: () => [const ProfileState.noData()],
    );
    
    test('should set profile data', (){
      //Arrange
      final repo = getProfileRepository();
      final cubit = ProfileCubit(getAuthCubitForStateChanges(), repo);
      
      //Act
      cubit.setProfileData(everythngUserConst);
      
      //Assert
      verify(() => repo.updateProfileData(everythngUser: everythngUserConst));
    });

    blocTest(
        'should set profile data and emit loaded state on successful update',
        build: () => ProfileCubit(getAuthCubitForStateChanges(),
            getProfileRepository(user: everythngUserConst)),
        act: (ProfileCubit cubit) => cubit.setProfileData(everythngUserConst),
        expect: () =>
        [ProfileState.loaded(everythngUser: everythngUserConst)]);
  });
}
