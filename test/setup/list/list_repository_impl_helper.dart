
import 'package:everythng/infrastructure/list/list_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_kit/network_kit.dart';


class MockNetworkKit extends Mock implements NetworkKit {}
//TODO: COMPLETE TESTS
ListRepository getListRepository({bool listFailure = false}) {
  final mockNetworkKit = MockNetworkKit();
  final service = ListRepository(mockNetworkKit);
  if (listFailure == false) {
    when(() => mockNetworkKit.send(
            system: 'list_system',
            function: 'add_item',
            headers: {},
            body: {"list_name": 'name', "product_id": 'productId'},
            ack: (ack) {}));
        
  } else {}
  return service;
}
