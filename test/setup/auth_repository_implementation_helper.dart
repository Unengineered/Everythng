import 'package:everythng/infrastructure/auth/auth_repository.dart';
import 'package:fort_knox/fort_knox.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;

const String temail = "email@unengineered.net";
const String tpassword = "password";
const String tuid = "UID";
const String token = 'TOKEN';
const String refreshedToken = 'REFRESHEDTOKEN';
const String url = 'http://www.everythng.in';

class MockFortKnox extends Mock implements FortKnox {}

class MockBaseUser extends Mock implements BaseUser {}

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

  final mockBaseUser = MockBaseUser();
  when(() => mockBaseUser.email).thenReturn(temail);
  when(() => mockBaseUser.uid).thenReturn(tuid);
  when(() => mockFortKnox.getAuthStatusStream())
      .thenAnswer((invocation) async* {
    yield isAuthenticated ? mockBaseUser : null;
  });
  return AuthRepository(mockFortKnox, mockHttpClient);
}

AuthRepository getAuthRepositoryForCurrentUser(bool isAuthenticated) {
  final mockFortKnox = MockFortKnox();
  final mockHttpClient = MockHttpClient();
  final mockBaseUser = MockBaseUser();
  when(() => mockBaseUser.email).thenReturn(temail);
  when(() => mockBaseUser.uid).thenReturn(tuid);
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
  final mockBaseUser = MockBaseUser();
  when(() => mockBaseUser.email).thenReturn(temail);
  when(() => mockBaseUser.uid).thenReturn(tuid);
  if (exception != null) {
    when(() => mockFortKnox.registerWithEmailAndPassword(
        email: temail, password: tpassword)).thenThrow(exception);
    when(() => mockFortKnox.signInWithEmailAndPassword(
        email: temail, password: tpassword)).thenThrow(exception);
  } else {
    when(() => mockFortKnox.registerWithEmailAndPassword(
        email: temail,
        password: tpassword)).thenAnswer((invocation) async => mockBaseUser);
    when(() => mockFortKnox.signInWithEmailAndPassword(
        email: temail,
        password: tpassword)).thenAnswer((invocation) async => mockBaseUser);
    when(() => mockFortKnox.signOut()).thenAnswer((invocation) async => () {});
    return AuthRepository(mockFortKnox, mockHttpClient);
  }
  return AuthRepository(mockFortKnox, mockHttpClient);
}
