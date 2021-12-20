import 'package:dartz/dartz.dart';
import 'package:everythng/constants/url.dart';
import 'package:everythng/domain/store/entities/store_failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mocktail/mocktail.dart';

import '../../setup/constants.dart';
import '../../setup/store/store_repository_impl_helper.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(Uri.parse(url));
  });

  group('getStore', () {
    test('returns a store on successful get request', () async {
      //Arrange
      final storeRepository = getStoreRepository();
      //Act
      final result = await storeRepository.getStore(storeId: 'storeId');
      //Assert
      expect(result, right(store));
    });
    test('returns a serverError on unsuccessful get request', () async {
      //Arrange
      final storeRepository =
          getStoreRepository(storeFailure: const StoreFailure.serverError());
      //Act
      final result = await storeRepository.getStore(storeId: 'storeId');
      //Assert
      expect(result, left(const StoreFailure.serverError()));
    });
    test('returns a NoStoreData error on getting 404 statusCode', () async {
      //Arrange
      final storeRepository = getStoreRepository(
          storeFailure: const StoreFailure.noStoreData(), code: '404');
      //Act
      final result = await storeRepository.getStore(storeId: 'storeId');
      //Assert
      expect(result, left(const StoreFailure.noStoreData()));
    });
  });

  group('setStore', () {
    test('returns a store on successful put request', () async {
      //Arrange
      final storeRepository = getStoreRepository();
      //Act
      final result = await storeRepository.setStore(store: store);
      //Assert
      expect(result, right(store));
    });
    test('returns a serverError on unsuccessful put request', () async {
      //Arrange
      final storeRepository =
          getStoreRepository(storeFailure: const StoreFailure.serverError());
      //Act
      final result = await storeRepository.setStore(store: store);
      //Assert
      expect(result, left(const StoreFailure.serverError()));
    });
  });

  group('uploadImage', () {
    test('returns an imageUrl on successful multipart request', () async {
      //Arrange
      final storeRepository = getStoreRepository();
      //Act
      final result = await storeRepository.uploadImage(
          imageInfo: 'imageInfo', file: XFile('test/setup/store/test.jpg'));
      //Assert
      expect(result, right(imageUrl));
    });
    test('returns a serverError on unsuccessful multipart request', () async {
      //Arrange
      final storeRepository = getStoreRepository(storeFailure :const StoreFailure.serverError());
      //Act
      final result = await storeRepository.uploadImage(
          imageInfo: 'imageInfo', file: XFile('test/setup/store/test.jpg'));
      //Assert
      expect(result, left(const StoreFailure.serverError()));
    });
    test('returns an uploadFailed error on getting 404 statusCode', () async {
      //Arrange
      final storeRepository = getStoreRepository(storeFailure : const StoreFailure.uploadFailed(),code: '404');
      //Act
      final result = await storeRepository.uploadImage(
          imageInfo: 'imageInfo', file: XFile('test/setup/store/test.jpg'));
      //Assert
      expect(result, left(const StoreFailure.uploadFailed()));
    });

  
  });
}
