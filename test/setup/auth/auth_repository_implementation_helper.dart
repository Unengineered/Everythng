import 'package:everythng/infrastructure/auth/auth_repository.dart';
import 'package:fort_knox/fort_knox.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;
import '../constants.dart';
import 'fort_knox_helper.dart';


class MockHttpClient extends Mock implements http.Client {}

AuthRepository getAuthRepositoryForEmailExist(
    bool accountFound, int statusCode) {
  final mockFortKnox = MockFortKnox();
  final mockHttpClient = MockHttpClient();
  when(() => mockHttpClient.get(any())).thenAnswer((invocation) async =>
      http.Response(
          '{"accountFound" : ${accountFound.toString()}, "status":200}',
          statusCode));
  return AuthRepository(mockFortKnox, mockHttpClient);
}

AuthRepository getAuthRepositoryForAuthStatusStream(bool isAuthenticated) {
  final mockFortKnox = MockFortKnox();
  final mockHttpClient = MockHttpClient();

  const mockBaseUser = BaseUser(email: email, uid: uid);
  when(() => mockFortKnox.getAuthStatusStream())
      .thenAnswer((invocation) async* {
    yield isAuthenticated ? mockBaseUser : null;
  });
  return AuthRepository(mockFortKnox, mockHttpClient);
}

AuthRepository getAuthRepositoryForCurrentUser(bool isAuthenticated) {
  final mockFortKnox = MockFortKnox();
  final mockHttpClient = MockHttpClient();
  const mockBaseUser = BaseUser(email: email, uid: uid);
  if (isAuthenticated == false) {
    when(() => mockFortKnox.getCurrentUser())
        .thenThrow(AuthenticationException.unauthenticated());
  } else {
    when(() => mockFortKnox.getCurrentUser()).thenReturn(mockBaseUser);
  }

  return AuthRepository(mockFortKnox, mockHttpClient);
}

AuthRepository getAuthRepositoryForToken(bool isAuthenticated,
    {bool forceRefresh = false}) {
  final mockFortKnox = MockFortKnox();
  final mockHttpClient = MockHttpClient();

  if (isAuthenticated == false) {
    when(() => mockFortKnox.getToken())
        .thenThrow(AuthenticationException.unauthenticated());
  } else {
    when(() => mockFortKnox.getToken(forceRefresh: forceRefresh))
        .thenAnswer((invocation) {
      if (forceRefresh == true) {
        return Future.value(refreshedToken);
      }
      return Future.value(token);
    });
  }

  return AuthRepository(mockFortKnox, mockHttpClient);
}

AuthRepository getAuthRepositoryForSigning(
    {AuthenticationException? exception}) {
  final mockFortKnox = MockFortKnox();
  final mockHttpClient = MockHttpClient();
  const mockBaseUser = BaseUser(email: email, uid: uid);

  if (exception != null) {
    when(() => mockFortKnox.registerWithEmailAndPassword(
        email: email, password: password)).thenThrow(exception);
    when(() => mockFortKnox.signInWithEmailAndPassword(
        email: email, password: password)).thenThrow(exception);
  } else {
    when(() => mockFortKnox.registerWithEmailAndPassword(
        email: email,
        password: password)).thenAnswer((invocation) async => mockBaseUser);
    when(() => mockFortKnox.signInWithEmailAndPassword(
        email: email,
        password: password)).thenAnswer((invocation) async => mockBaseUser);
    when(() => mockFortKnox.signOut()).thenAnswer((invocation) async => () {});
    return AuthRepository(mockFortKnox, mockHttpClient);
  }
  return AuthRepository(mockFortKnox, mockHttpClient);
}
