import 'package:auto_route/auto_route.dart';
import 'package:everythng/presentation/auth/pages/confirm_password_page.dart';
import 'package:everythng/presentation/auth/pages/create_password_page.dart';
import 'package:everythng/presentation/auth/pages/login_page.dart';
import 'package:everythng/presentation/auth/pages/password_page.dart';
import 'package:everythng/presentation/home/pages/home_page.dart';
import 'package:everythng/presentation/splash/splash_page.dart';
import 'package:flutter/cupertino.dart';

part 'app_router.gr.dart';

@CupertinoAutoRouter(routes: [
  CupertinoRoute(page: SplashPage, initial: true),
  CupertinoRoute(page: HomePage),
  CupertinoRoute(page: LoginPage),
  CupertinoRoute(page: PasswordPage),
  CupertinoRoute(page: CreatePasswordPage),
  CupertinoRoute(page: ConfirmPasswordPage),
])
class AppRouter extends _$AppRouter{}