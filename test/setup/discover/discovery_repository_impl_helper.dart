import 'package:everythng/constants/url.dart';
import 'package:everythng/infrastructure/discover/discover_repository.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_kit/network_kit.dart';

import '../constants.dart';

class MockNetworkKit extends Mock implements NetworkKit {}

DiscoverRepository getDiscoverRepository({bool networkFailure = false}) {
  final mockNetworkKit = MockNetworkKit();
  final service = DiscoverRepository(mockNetworkKit);
  if (networkFailure == false) {
    when(() => mockNetworkKit.get(Uri.http(url, '/recommendations/stores')))
        .thenAnswer((invocation) async => Response(recommendedStoreJson, 200));
    when(() => mockNetworkKit.get(Uri.http(url, '/recommendations/products')))
        .thenAnswer(
            (invocation) async => Response(recommendedProductJson, 200));
  } else {
    when(() => mockNetworkKit.get(any()))
        .thenAnswer((invocation) async => Response('failure', 400));
  }
  return service;
}
