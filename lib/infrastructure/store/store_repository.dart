import 'dart:convert';
import 'package:everythng/domain/core/store_link.dart';
import 'package:everythng/domain/store/entities/store_failure.dart';
import 'package:everythng/domain/store/entities/everythng_store.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/store/i_store_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:network_kit/network_kit.dart';

@Singleton(as: IStoreRepository,  env: ["test", "dev"])
class StoreRepository implements IStoreRepository {
  final NetworkKit _networkKit;
  final String url = "https://www.everythng.in";

  StoreRepository(this._networkKit);

  @override
  Future<Either<StoreFailure, Store>> getStore(
      {required String storeId}) async {
    final response =
        await _networkKit.get(Uri.http(url, '/store/', {"storeId": storeId}));
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
    final response = await _networkKit.put(
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
    final request = _networkKit.multipartRequest(
      "POST",
      Uri.http(
        url,
        '/image/',
      ),
    );
    request.fields['imageInfo'] = imageInfo;
    request.files.add(await _networkKit.fromPath(
      'imageFile',
      file.path,
    ));
    final response = await _networkKit.fromStream(await request.send());
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
    try {
      return _networkKit
          .get(Uri.https("www.everything.com", "store"))
          .then((response) {
        return right((response.body["store_links"]!
        as List<Map<String, dynamic>>)
            .map((product) => StoreLink.fromJson(product))
            .toList());
      });
    } on NetworkKitException catch (_) {
      return left(const StoreFailure.networkFailure());
    }
  }
}
