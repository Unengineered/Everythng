import 'package:everythng/core/api/url.dart';
import 'package:everythng/infrastructure/discover/discover_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_kit/network_kit.dart';

import '../constants.dart';

class MockNetworkKit extends Mock implements NetworkKit {}

DiscoverRepository getDiscoverRepository({bool networkFailure = false}) {
  final mockNetworkKit = MockNetworkKit();
  final service = DiscoverRepository(mockNetworkKit);
  if (networkFailure == false) {
    when(() => mockNetworkKit.get(Uri.http(url, '/recommendations/store')))
        .thenAnswer((invocation) async => WebsocketResponse(body: recommendedStoresJson, statusCode: 200, statusMessage: "OK", headers: {}, responseId: "ID"));
    when(() => mockNetworkKit.get(Uri.http(url, '/recommendations/product')))
        .thenAnswer(
            (invocation) async => WebsocketResponse(body: recommendedProductsJson, statusCode: 200, statusMessage: "OK", headers: {}, responseId: "ID"));
  } else {
    when(() => mockNetworkKit.get(any()))
        .thenAnswer((invocation) async => WebsocketResponse(statusCode: 400, statusMessage: 'failure', body: {}, headers: {}, responseId: 'ID'));
  }
  return service;
}
