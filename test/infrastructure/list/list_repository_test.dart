import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../setup/constants.dart';
import '../../setup/list/list_repository_impl_helper.dart';

void main() {
  group('getLists', () {
    test('Should return ItemLists when called', () async{
      //Arrange
      final listRepository = getListRepository();
      //Act
      final result =  listRepository.getLists();
      //Assert
       expect(result,right(unit));
    });
  });
  group('addList', () {
    test('Should return ItemLists when called', () async{
      //Arrange
      final listRepository = getListRepository();
      //Act
      final result =  listRepository.addList(name: 'name',emoji: 'emoji');
      //Assert
       expect(result,right(unit));
    });
  });
  group('removeList', () {
    test('Should return ItemLists when called', () async{
      //Arrange
      final listRepository = getListRepository();
      //Act
      final result =  listRepository.removeList('name');
      //Assert
       expect(result,right(unit));
    });
  });
  group('addItem', () {
    test('Should return UserList when called', () async{
      //Arrange
      final listRepository = getListRepository();
      //Act
      final result =  listRepository.addItem(name: 'list1',productId: 'productId');
      //Assert
     expect(result,right(unit));
    });
  });
  group('removeItem', () {
    test('Should return UserList when called', () async{
       //Arrange
      final listRepository = getListRepository();
      //Act
      final result =  listRepository.removeItem(name: 'list1',productId: 'productId');
      //Assert
      expect(result,right(unit));
    });
  });
}
