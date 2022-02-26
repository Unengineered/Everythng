import 'dart:convert';
import 'package:everythng/domain/core/store_link.dart';
import 'package:everythng/domain/store/entities/store_failure.dart';
import 'package:everythng/domain/store/entities/everythng_store.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/store/i_store_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:network_kit/network_kit.dart';

@Injectable(as: IStoreRepository)
class StoreRepository implements IStoreRepository {
  final NetworkKit networkKit;
  final String url = "https://www.everythng.in";

  StoreRepository(this.networkKit);

  @override
  Future<Either<StoreFailure, Store>> getStore(
      {required String storeId}) async {
    final response =
        await networkKit.get(Uri.http(url, '/store/', {"storeId": storeId}));
    if (response.statusCode != 200) {
      if (response.statusCode == 404) {
        return left(const StoreFailure.noStoreData());
      }
      return left(const StoreFailure.serverError());
    }
    return right(Store.fromJson((response.body)));
  }

  @override
  Future<Either<StoreFailure, Store>> setStore({required Store store}) async {
    final response = await networkKit.put(
        Uri.http(
          url,
          '/store/',
        ),
        body: json.encode(store.toJson()),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode != 200) {
      return left(const StoreFailure.serverError());
    }
    return right(Store.fromJson((response.body)));
  }

  @override
  Future<Either<StoreFailure, String>> uploadImage(
      {required String imageInfo, required XFile file}) async {
    final request = networkKit.multipartRequest(
      "POST",
      Uri.http(
        url,
        '/image/',
      ),
    );
    request.fields['imageInfo'] = imageInfo;
    request.files.add(await networkKit.fromPath(
      'imageFile',
      file.path,
    ));
    final response = await networkKit.fromStream(await request.send());
    if (response.statusCode != 200) {
      if (response.statusCode == 404) {
        return left(const StoreFailure.uploadFailed());
      }
      return left(const StoreFailure.serverError());
    }
    return right(json.decode(response.body)['imageUrl']);
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

    throw UnimplementedError();
  }
}
