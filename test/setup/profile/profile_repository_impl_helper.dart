
import 'package:everythng/core/api/url.dart';
import 'package:everythng/infrastructure/profile/profile_repository.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_kit/network_kit.dart';

import '../constants.dart';

class MockNetworkKit extends Mock implements NetworkKit {}

ProfileRepository getProfileRepository({int? failureCode}) {
  final mockNetworkKit = MockNetworkKit();
  final service = ProfileRepository(mockNetworkKit);

  if (failureCode == null) {
    when(() => mockNetworkKit.get(Uri.http(url, '/profile/')))
        .thenAnswer((invocation) async => Response(profileData, 200));
    when(() => mockNetworkKit.post(Uri.http(url, '/profile/update'), body: everythngUserConst.toJson()))
        .thenAnswer(
            (invocation) async => Response(profileData, 200));
  } else {
    when(() => mockNetworkKit.get(Uri.http(url, '/profile/')))
        .thenAnswer((invocation) async => Response('failure', failureCode));
     when(() => mockNetworkKit.post(Uri.http(url, '/profile/update'), body: everythngUserConst.toJson()))
        .thenAnswer((invocation) async => Response('failure', failureCode));
  }
  return service;
}