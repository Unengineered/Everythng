import 'package:auto_route/auto_route.dart';
import 'package:everythng/presentation/auth/pages/confirm_password_page.dart';
import 'package:everythng/presentation/auth/pages/create_password_page.dart';
import 'package:everythng/presentation/auth/pages/login_page.dart';
import 'package:everythng/presentation/auth/pages/password_page.dart';
import 'package:everythng/presentation/discover/pages/discover_page.dart';
import 'package:everythng/presentation/profile/pages/address_page.dart';
import 'package:everythng/presentation/profile/pages/first_name_page.dart';
import 'package:everythng/presentation/profile/pages/last_name_page.dart';
import 'package:everythng/presentation/profile/pages/phone_number_page.dart';
import 'package:everythng/presentation/splash/splash_page.dart';
import 'package:everythng/presentation/tree_wrappers/main_app_wrapper.dart';
import 'package:everythng/presentation/tree_wrappers/profile_flow_wrapper.dart';
import 'package:everythng/presentation/tree_wrappers/sigining_flow_wrapper.dart';
import 'package:flutter/cupertino.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(routes: [
  CupertinoRoute(page: SplashPage, initial: true),

  CupertinoRoute(page: SigningFlowWrapper, children: [
    CupertinoRoute(page: LoginPage, initial: true),
    CupertinoRoute(page: PasswordPage),
    CupertinoRoute(page: CreatePasswordPage),
    CupertinoRoute(page: ConfirmPasswordPage),
  ]),

  CupertinoRoute(page: MainAppWrapper, children: [
    CupertinoRoute(page: DiscoverPage, initial: true),
  ]),

  CupertinoRoute(page: ProfileFlowWrapper, children: [
    CupertinoRoute(page: FirstNamePage, initial: true),
    CupertinoRoute(page: LastNamePage),
    CupertinoRoute(page: PhoneNumberPage),
    CupertinoRoute(page: AddressPage),
  ])
  // To use custom route comment this out and apply it to all
  // CustomRoute(
  //     page: LoginPage,
  //     transitionsBuilder: CustomTransition,
  //     durationInMilliseconds: 1000,
  //     reverseDurationInMilliseconds: 1000)
])
class AppRouter extends _$AppRouter {}
