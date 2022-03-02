import 'package:dartz/dartz.dart';
import 'package:everythng/domain/core/store_link.dart';
import 'package:everythng/domain/store/entities/everythng_store.dart';
import 'package:everythng/domain/store/entities/store_failure.dart';
import 'package:everythng/domain/store/i_store_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IStoreRepository, env: ["mock"])
class MockStoreRepository implements IStoreRepository{

  MockStoreRepository(){
    print("using store mock");
  }

  @override
  Future<Either<StoreFailure, Store>> getStore({required String storeId}) {
    // TODO: implement getStore
    throw UnimplementedError();
  }

  @override
  Future<Either<StoreFailure, List<StoreLink>>> getStoreLinkList() async {
    return right([
      StoreLink(
          name: "STORE 1",
          id: "1",
          thumbnail: Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"),
          instagram: Uri.parse("https://www.instagram.com/store1")),
      StoreLink(
          name: "STORE 1",
          id: "1",
          thumbnail: Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"),
          instagram: Uri.parse("https://www.instagram.com/store1")),
      StoreLink(
          name: "STORE 1",
          id: "1",
          thumbnail: Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"),
          instagram: Uri.parse("https://www.instagram.com/store1")),
      StoreLink(
          name: "STORE 1",
          id: "1",
          thumbnail: Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"),
          instagram: Uri.parse("https://www.instagram.com/store1")),
      StoreLink(
          name: "STORE 1",
          id: "1",
          thumbnail: Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/everything-25.appspot.com/o/logos%2Fshirtegg-logo.png?alt=media&token=5b6fa5b1-cf5a-4597-9907-ae53101934e2"),
          instagram: Uri.parse("https://www.instagram.com/store1")),
    ]);
  }

  @override
  Future<Either<StoreFailure, Store>> setStore({required Store store}) {
    // TODO: implement setStore
    throw UnimplementedError();
  }

  @override
  Future<Either<StoreFailure, String>> uploadImage({required String imageInfo, required XFile file}) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }
}