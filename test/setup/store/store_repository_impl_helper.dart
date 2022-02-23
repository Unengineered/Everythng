import 'dart:convert';
import 'dart:io';
import 'package:everythng/constants/url.dart';
import 'package:everythng/domain/store/entities/store_failure.dart';
import 'package:everythng/infrastructure/store/store_repository.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_kit/network_kit.dart';

import '../constants.dart';

class MockStoreRepository extends Mock implements StoreRepository {}

class MockNetworkKit extends Mock implements NetworkKit {}

class MockMultipartRequest extends Mock implements MultipartRequest {}

class MockStreamedResponse extends Mock implements StreamedResponse {}

StoreRepository getStoreRepository({StoreFailure? storeFailure, String? code}) {
  final mockNetworkKit = MockNetworkKit();
  final mockMultipartRequest = MockMultipartRequest();
  final service = StoreRepository(mockNetworkKit);
  final mockstreamedResponse = MockStreamedResponse();
  final List<MultipartFile> mFiles = [];

  when(() => mockNetworkKit.fromPath('imageFile', 'test/setup/store/test.jpg'))
      .thenAnswer((_) async {
    return MultipartFile(
        'imageFile',
        File('test/setup/store/test.jpg').openRead(),
        await File('test/setup/store/test.jpg').length());
  });
  when(() => mockNetworkKit.multipartRequest(
      "POST",
      Uri.http(
        url,
        '/image/',
      ))).thenReturn(mockMultipartRequest);
  when(()=> mockMultipartRequest.fields).thenReturn({'imageInfo':'imageInfo'});
  when(()=> mockMultipartRequest.files).thenReturn(mFiles);

  if (storeFailure == null) {
    //getStore
    when(() => mockNetworkKit
            .get(Uri.http(url, '/store/', {"storeId": 'storeId'})))
        .thenAnswer((invocation) async => Response(storeModel, 200));
    //setStore
    when(() => mockNetworkKit.put(Uri.http(url, '/store/'),
            body: json.encode(store.toJson()),
            headers: {"Content-Type": "application/json"}))
        .thenAnswer((invocation) async => Response(storeModel, 200));
    //uploadImage
    when(() => mockMultipartRequest.send()).thenAnswer((invocation) async =>
        mockstreamedResponse);
    when(() => mockNetworkKit.fromStream(mockstreamedResponse))
        .thenAnswer((invocation) async => Response(imageResponse, 200));
  } else {
    //getStore
    when(() => mockNetworkKit
            .get(Uri.http(url, '/store/', {"storeId": 'storeId'})))
        .thenAnswer((invocation) async => code == '404'
            ? Response('failure', 404)
            : Response('failure', 400));
    //setStore
    when(() => mockNetworkKit.put(
            Uri.http(
              url,
              '/store/',
            ),
            body: json.encode(store.toJson()),
            headers: {"Content-Type": "application/json"}))
        .thenAnswer((invocation) async => Response('failure', 400));
    //uploadImage
    when(() => mockMultipartRequest.send()).thenAnswer((invocation) async =>
        mockstreamedResponse);
    when(() => mockNetworkKit.fromStream(mockstreamedResponse))
        .thenAnswer((invocation) async => code == '404'
            ? Response('failure', 404)
            : Response('failure', 400));
  }
  return service;
}
