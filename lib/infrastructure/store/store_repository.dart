import 'dart:convert';
import 'package:everythng/constants/url.dart';
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
    return right(Store.fromJson(json.decode(response.body)));
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
    return right(Store.fromJson(json.decode(response.body)));
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
}
