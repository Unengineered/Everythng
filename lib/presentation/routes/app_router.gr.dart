// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    SigningFlowWrapperRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const SigningFlowWrapper());
    },
    ThriftingMarketplaceWrapperRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const ThriftingMarketplaceWrapper());
    },
    BuyingMarketplaceWrapperRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const BuyingMarketplaceWrapper());
    },
    StoreWrapperRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const StoreWrapper());
    },
    RentingMarketplaceWrapperRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const RentingMarketplaceWrapper());
    },
    ProfileFlowWrapperRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const ProfileFlowWrapper());
    },
    SavedPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const SavedPage());
    },
    ItemsPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const ItemsPage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: LoginPage(key: args.key));
    },
    PasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<PasswordPageRouteArgs>(
          orElse: () => const PasswordPageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: PasswordPage(key: args.key));
    },
    CreatePasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<CreatePasswordPageRouteArgs>(
          orElse: () => const CreatePasswordPageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: CreatePasswordPage(key: args.key));
    },
    ConfirmPasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmPasswordPageRouteArgs>(
          orElse: () => const ConfirmPasswordPageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: ConfirmPasswordPage(key: args.key));
    },
    DiscoverPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const DiscoverPage());
    },
    BuyingPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const BuyingPage());
    },
    StorePageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const StorePage());
    },
    RentingPageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const RentingPage());
    },
    FirstNamePageRoute.name: (routeData) {
      final args = routeData.argsAs<FirstNamePageRouteArgs>(
          orElse: () => const FirstNamePageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: FirstNamePage(key: args.key));
    },
    LastNamePageRoute.name: (routeData) {
      final args = routeData.argsAs<LastNamePageRouteArgs>(
          orElse: () => const LastNamePageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: LastNamePage(key: args.key));
    },
    PhoneNumberPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneNumberPageRouteArgs>(
          orElse: () => const PhoneNumberPageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: PhoneNumberPage(key: args.key));
    },
    AddressPageRoute.name: (routeData) {
      final args = routeData.argsAs<AddressPageRouteArgs>(
          orElse: () => const AddressPageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: AddressPage(key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashPageRoute.name, path: '/'),
        RouteConfig(SigningFlowWrapperRoute.name,
            path: '/signing-flow-wrapper',
            children: [
              RouteConfig(SavedPageRoute.name,
                  path: '', parent: SigningFlowWrapperRoute.name),
              RouteConfig(ItemsPageRoute.name,
                  path: 'items-page', parent: SigningFlowWrapperRoute.name),
              RouteConfig(LoginPageRoute.name,
                  path: 'login-page', parent: SigningFlowWrapperRoute.name),
              RouteConfig(PasswordPageRoute.name,
                  path: 'password-page', parent: SigningFlowWrapperRoute.name),
              RouteConfig(CreatePasswordPageRoute.name,
                  path: 'create-password-page',
                  parent: SigningFlowWrapperRoute.name),
              RouteConfig(ConfirmPasswordPageRoute.name,
                  path: 'confirm-password-page',
                  parent: SigningFlowWrapperRoute.name)
            ]),
        RouteConfig(ThriftingMarketplaceWrapperRoute.name,
            path: '/thrifting-marketplace-wrapper',
            children: [
              RouteConfig(DiscoverPageRoute.name,
                  path: '', parent: ThriftingMarketplaceWrapperRoute.name)
            ]),
        RouteConfig(BuyingMarketplaceWrapperRoute.name,
            path: '/buying-marketplace-wrapper',
            children: [
              RouteConfig(BuyingPageRoute.name,
                  path: '', parent: BuyingMarketplaceWrapperRoute.name)
            ]),
        RouteConfig(StoreWrapperRoute.name, path: '/store-wrapper', children: [
          RouteConfig(StorePageRoute.name,
              path: '', parent: StoreWrapperRoute.name)
        ]),
        RouteConfig(RentingMarketplaceWrapperRoute.name,
            path: '/renting-marketplace-wrapper',
            children: [
              RouteConfig(RentingPageRoute.name,
                  path: '', parent: RentingMarketplaceWrapperRoute.name)
            ]),
        RouteConfig(ProfileFlowWrapperRoute.name,
            path: '/profile-flow-wrapper',
            children: [
              RouteConfig(FirstNamePageRoute.name,
                  path: '', parent: ProfileFlowWrapperRoute.name),
              RouteConfig(LastNamePageRoute.name,
                  path: 'last-name-page', parent: ProfileFlowWrapperRoute.name),
              RouteConfig(PhoneNumberPageRoute.name,
                  path: 'phone-number-page',
                  parent: ProfileFlowWrapperRoute.name),
              RouteConfig(AddressPageRoute.name,
                  path: 'address-page', parent: ProfileFlowWrapperRoute.name)
            ])
      ];
}

/// generated route for [SplashPage]
class SplashPageRoute extends PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [SigningFlowWrapper]
class SigningFlowWrapperRoute extends PageRouteInfo<void> {
  const SigningFlowWrapperRoute({List<PageRouteInfo>? children})
      : super(name, path: '/signing-flow-wrapper', initialChildren: children);

  static const String name = 'SigningFlowWrapperRoute';
}

/// generated route for [ThriftingMarketplaceWrapper]
class ThriftingMarketplaceWrapperRoute extends PageRouteInfo<void> {
  const ThriftingMarketplaceWrapperRoute({List<PageRouteInfo>? children})
      : super(name,
            path: '/thrifting-marketplace-wrapper', initialChildren: children);

  static const String name = 'ThriftingMarketplaceWrapperRoute';
}

/// generated route for [BuyingMarketplaceWrapper]
class BuyingMarketplaceWrapperRoute extends PageRouteInfo<void> {
  const BuyingMarketplaceWrapperRoute({List<PageRouteInfo>? children})
      : super(name,
            path: '/buying-marketplace-wrapper', initialChildren: children);

  static const String name = 'BuyingMarketplaceWrapperRoute';
}

/// generated route for [StoreWrapper]
class StoreWrapperRoute extends PageRouteInfo<void> {
  const StoreWrapperRoute({List<PageRouteInfo>? children})
      : super(name, path: '/store-wrapper', initialChildren: children);

  static const String name = 'StoreWrapperRoute';
}

/// generated route for [RentingMarketplaceWrapper]
class RentingMarketplaceWrapperRoute extends PageRouteInfo<void> {
  const RentingMarketplaceWrapperRoute({List<PageRouteInfo>? children})
      : super(name,
            path: '/renting-marketplace-wrapper', initialChildren: children);

  static const String name = 'RentingMarketplaceWrapperRoute';
}

/// generated route for [ProfileFlowWrapper]
class ProfileFlowWrapperRoute extends PageRouteInfo<void> {
  const ProfileFlowWrapperRoute({List<PageRouteInfo>? children})
      : super(name, path: '/profile-flow-wrapper', initialChildren: children);

  static const String name = 'ProfileFlowWrapperRoute';
}

/// generated route for [SavedPage]
class SavedPageRoute extends PageRouteInfo<void> {
  const SavedPageRoute() : super(name, path: '');

  static const String name = 'SavedPageRoute';
}

/// generated route for [ItemsPage]
class ItemsPageRoute extends PageRouteInfo<void> {
  const ItemsPageRoute() : super(name, path: 'items-page');

  static const String name = 'ItemsPageRoute';
}

/// generated route for [LoginPage]
class LoginPageRoute extends PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({Key? key})
      : super(name, path: 'login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for [PasswordPage]
class PasswordPageRoute extends PageRouteInfo<PasswordPageRouteArgs> {
  PasswordPageRoute({Key? key})
      : super(name,
            path: 'password-page', args: PasswordPageRouteArgs(key: key));

  static const String name = 'PasswordPageRoute';
}

class PasswordPageRouteArgs {
  const PasswordPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PasswordPageRouteArgs{key: $key}';
  }
}

/// generated route for [CreatePasswordPage]
class CreatePasswordPageRoute
    extends PageRouteInfo<CreatePasswordPageRouteArgs> {
  CreatePasswordPageRoute({Key? key})
      : super(name,
            path: 'create-password-page',
            args: CreatePasswordPageRouteArgs(key: key));

  static const String name = 'CreatePasswordPageRoute';
}

class CreatePasswordPageRouteArgs {
  const CreatePasswordPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CreatePasswordPageRouteArgs{key: $key}';
  }
}

/// generated route for [ConfirmPasswordPage]
class ConfirmPasswordPageRoute
    extends PageRouteInfo<ConfirmPasswordPageRouteArgs> {
  ConfirmPasswordPageRoute({Key? key})
      : super(name,
            path: 'confirm-password-page',
            args: ConfirmPasswordPageRouteArgs(key: key));

  static const String name = 'ConfirmPasswordPageRoute';
}

class ConfirmPasswordPageRouteArgs {
  const ConfirmPasswordPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ConfirmPasswordPageRouteArgs{key: $key}';
  }
}

/// generated route for [DiscoverPage]
class DiscoverPageRoute extends PageRouteInfo<void> {
  const DiscoverPageRoute() : super(name, path: '');

  static const String name = 'DiscoverPageRoute';
}

/// generated route for [BuyingPage]
class BuyingPageRoute extends PageRouteInfo<void> {
  const BuyingPageRoute() : super(name, path: '');

  static const String name = 'BuyingPageRoute';
}

/// generated route for [StorePage]
class StorePageRoute extends PageRouteInfo<void> {
  const StorePageRoute() : super(name, path: '');

  static const String name = 'StorePageRoute';
}

/// generated route for [RentingPage]
class RentingPageRoute extends PageRouteInfo<void> {
  const RentingPageRoute() : super(name, path: '');

  static const String name = 'RentingPageRoute';
}

/// generated route for [FirstNamePage]
class FirstNamePageRoute extends PageRouteInfo<FirstNamePageRouteArgs> {
  FirstNamePageRoute({Key? key})
      : super(name, path: '', args: FirstNamePageRouteArgs(key: key));

  static const String name = 'FirstNamePageRoute';
}

class FirstNamePageRouteArgs {
  const FirstNamePageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'FirstNamePageRouteArgs{key: $key}';
  }
}

/// generated route for [LastNamePage]
class LastNamePageRoute extends PageRouteInfo<LastNamePageRouteArgs> {
  LastNamePageRoute({Key? key})
      : super(name,
            path: 'last-name-page', args: LastNamePageRouteArgs(key: key));

  static const String name = 'LastNamePageRoute';
}

class LastNamePageRouteArgs {
  const LastNamePageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LastNamePageRouteArgs{key: $key}';
  }
}

/// generated route for [PhoneNumberPage]
class PhoneNumberPageRoute extends PageRouteInfo<PhoneNumberPageRouteArgs> {
  PhoneNumberPageRoute({Key? key})
      : super(name,
            path: 'phone-number-page',
            args: PhoneNumberPageRouteArgs(key: key));

  static const String name = 'PhoneNumberPageRoute';
}

class PhoneNumberPageRouteArgs {
  const PhoneNumberPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PhoneNumberPageRouteArgs{key: $key}';
  }
}

/// generated route for [AddressPage]
class AddressPageRoute extends PageRouteInfo<AddressPageRouteArgs> {
  AddressPageRoute({Key? key})
      : super(name, path: 'address-page', args: AddressPageRouteArgs(key: key));

  static const String name = 'AddressPageRoute';
}

class AddressPageRouteArgs {
  const AddressPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AddressPageRouteArgs{key: $key}';
  }
}
