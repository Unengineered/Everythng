// import 'package:everythng/core/api/url.dart';
// import 'package:everythng/infrastructure/list/list_repository.dart';
// import 'package:http/http.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:network_kit/network_kit.dart';

// import '../constants.dart';

// class MockNetworkKit extends Mock implements NetworkKit {}

// ListRepository getListRepository({bool listFailure = false}) {
//   final mockNetworkKit = MockNetworkKit();
//   final service = ListRepository(mockNetworkKit);
//   if (listFailure == false) {
//     //getLists
//     when(() => mockNetworkKit.get(Uri.http(
//           url,
//           '/lists',
//         ))).thenAnswer((invocation) async => Response(listJson, 200));
//     //addList
//     when(() => mockNetworkKit.post(Uri.http(url, '/lists'),
//             body: {"list_name": 'name'},
//             headers: {"Content-Type": "application/json"}))
//         .thenAnswer((invocation) async => Response(listJson, 200));
//     //removeList
//     when(() => mockNetworkKit.delete(Uri.http(url, '/lists'),
//             body: {"list_name": 'name'},
//             headers: {"Content-Type": "application/json"}))
//         .thenAnswer((invocation) async => Response(listJson, 200));
//     //addItem
//     when(() => mockNetworkKit.post(Uri.http(url, '/lists/addItem'),
//             body: {"list_name": 'list1', "product_id": 'productId'},
//             headers: {"Content-Type": "application/json"}))
//         .thenAnswer((invocation) async => Response(userListJson, 200));
//     //removeItem
//     when(() => mockNetworkKit.delete(Uri.http(url, '/lists/deleteItem'),
//             body: {"list_name": 'list1', "product_id": 'productId'},
//             headers: {"Content-Type": "application/json"}))
//         .thenAnswer((invocation) async => Response(userListJson, 200));
//   } else {
//     when(() => mockNetworkKit.get(any()))
//         .thenAnswer((invocation) async => Response('failure', 400));
//   }
//   return service;
// }
