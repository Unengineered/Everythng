import 'package:mocktail/mocktail.dart';
import 'package:network_kit/network_kit.dart';

import 'constants.dart';

class MockNetworkKit extends Mock implements NetworkKit {}

MockNetworkKit getNetworkKitForProduct({bool exception = false, bool is404 = false, bool futureError = false}) {
  final service = MockNetworkKit();

  if (!exception) {
    when(() => service.get(any())).thenAnswer((invocation) async {

      if(futureError) return Future.error(NetworkKitException(code: 'network-disconnect'));

      return is404 ? WebsocketResponse(
          responseId: "responseId",
          body: {},
          statusCode: 404,
          statusMessage: "Not found",
          headers: {}) :
      WebsocketResponse(
          responseId: "responseId",
          body: THRIFT_PRODUCT_JSON,
          statusCode: 200,
          statusMessage: "OK",
          headers: {});

    } );
  } else {
    when(() => service.get(any())).thenAnswer(
        (invocation) async => throw NetworkKitException(code: 'not-connected'));
  }

  return service;
}

