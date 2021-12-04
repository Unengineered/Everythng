import 'package:everythng/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fort_knox/fort_knox.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AuthInjectionModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FortKnox get fortKnox => FortKnox(firebaseAuth: getIt<FirebaseAuth>());
}
