import 'package:everythng/domain/product/entities/detailed_thrift_product.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_kit/network_kit.dart';

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
          body: productJson,
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

const productJson = {
  "_id": "PRODUCT ID",
  "name": "PRODUCT NAME",
  "description": "PRODUCT DESCRIPTION",
  "price": 100.4,
  "original_price": 1000.2,
  "store_link": {
    "id": "ID",
    "logo": "URL",
    "name": "NAME",
    "tagline": "TAGLINE",
  },
  "customer_review": {"emoji": "😂", "message": "MESSAGE"},
  "pictures": ["URL", "URL", "URL"],
  "size_chart": {"key": "value"},
  "issues": [
    {
      "description": "DESCRIPTION",
      "pictures": ["URL", "URL"],
    },
    {
      "description": "DESCRIPTION",
      "pictures": ["URL", "URL"],
    },
  ],
  "brand": {"name": "NAME", "logo": "URL"},
};

final DetailedThriftProduct detailedThriftProduct =
    DetailedThriftProduct.fromJson(productJson);
