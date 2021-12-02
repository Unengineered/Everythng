import 'package:everythng/domain/core/network_failure.dart';
import 'package:everythng/domain/discover/i_discover_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockDiscoverRepository extends Mock implements IDiscoverRepository{}

// IDiscoverRepository getDiscoverRepositoryForRecommendations(NetworkFailure? networkFailure){
//   if(networkFailure != null){
//     when()
//   }
// }