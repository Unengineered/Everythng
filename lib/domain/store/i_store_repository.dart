import 'package:dartz/dartz.dart';
import 'package:everythng/domain/core/store_link.dart';
import 'package:everythng/domain/store/entities/everythng_store.dart';
import 'package:everythng/domain/store/entities/store_failure.dart';
import 'package:image_picker/image_picker.dart';

abstract class IStoreRepository{
  Future<Either<StoreFailure,Store>> getStore({required String storeId});
  Future<Either<StoreFailure,Store>> setStore({required Store store});
  Future<Either<StoreFailure,String>> uploadImage({required String imageInfo, required XFile file});
  Future<Either<StoreFailure,List<StoreLink>>> getStoreLinkList();
}