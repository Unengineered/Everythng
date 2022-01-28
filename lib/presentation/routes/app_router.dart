import 'package:auto_route/auto_route.dart';
import 'package:everythng/presentation/auth/pages/confirm_password_page.dart';
import 'package:everythng/presentation/auth/pages/create_password_page.dart';
import 'package:everythng/presentation/auth/pages/login_page.dart';
import 'package:everythng/presentation/auth/pages/password_page.dart';
import 'package:everythng/presentation/marketplace/buying/buying_page.dart';
import 'package:everythng/presentation/marketplace/renting/renting_page.dart';
import 'package:everythng/presentation/marketplace/saved/pages/items_page.dart';
import 'package:everythng/presentation/marketplace/saved/pages/saved_page.dart';
import 'package:everythng/presentation/marketplace/store/store_page.dart';
import 'package:everythng/presentation/marketplace/thrifting/discover_page.dart';
import 'package:everythng/presentation/profile/pages/address_page.dart';
import 'package:everythng/presentation/profile/pages/first_name_page.dart';
import 'package:everythng/presentation/profile/pages/last_name_page.dart';
import 'package:everythng/presentation/profile/pages/phone_number_page.dart';
import 'package:everythng/presentation/splash/splash_page.dart';
import 'package:everythng/presentation/tree_wrappers/buying_marketplace_wrapper.dart';
import 'package:everythng/presentation/tree_wrappers/profile_flow_wrapper.dart';
import 'package:everythng/presentation/tree_wrappers/renting_marketplace_wrapper.dart';
import 'package:everythng/presentation/tree_wrappers/signing_flow_wrapper.dart';
import 'package:everythng/presentation/tree_wrappers/store_wrapper.dart';
import 'package:everythng/presentation/tree_wrappers/thrifting_marketplace_wrapper.dart';
import 'package:flutter/cupertino.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(routes: [
  CupertinoRoute(page: SplashPage, initial: true),

  CupertinoRoute(page: SigningFlowWrapper, children: [
    CupertinoRoute(page: LoginPage,initial: true),
    CupertinoRoute(page: PasswordPage),
    CupertinoRoute(page: CreatePasswordPage),
    CupertinoRoute(page: ConfirmPasswordPage),
  ]),

  CupertinoRoute(page: ThriftingMarketplaceWrapper, children: [
    CupertinoRoute(page: SavedPage, initial: true),
    CupertinoRoute(page: ItemsPage),
    //CupertinoRoute(page: DiscoverPage, initial: true),
    // CupertinoRoute(page: DiscoverPage),
    // CupertinoRoute(page: StoreNamePage, initial: true),
    // CupertinoRoute(page: StoreDetailPage),
    // CupertinoRoute(page: IdentityProofPage),
    // CupertinoRoute(page: BankDetailsPage),
    // CupertinoRoute(page: BusinessEmailPage),
    // CupertinoRoute(page: StoreAddressPage),
  ]),
  CupertinoRoute(page: BuyingMarketplaceWrapper, children: [
    CupertinoRoute(page: BuyingPage, initial: true),
  ]),
  CupertinoRoute(page: StoreWrapper, children: [
    CupertinoRoute(page: StorePage, initial: true),
  ]),
  CupertinoRoute(page: RentingMarketplaceWrapper, children: [
    CupertinoRoute(page: RentingPage, initial: true),
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
