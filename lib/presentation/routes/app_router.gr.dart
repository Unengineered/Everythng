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
    MainAppWrapperRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const MainAppWrapper());
    },
    ProfileFlowWrapperRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const ProfileFlowWrapper());
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
    StoreNamePageRoute.name: (routeData) {
      final args = routeData.argsAs<StoreNamePageRouteArgs>(
          orElse: () => const StoreNamePageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: StoreNamePage(key: args.key));
    },
    StoreDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<StoreDetailPageRouteArgs>(
          orElse: () => const StoreDetailPageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: StoreDetailPage(key: args.key));
    },
    IdentityProofPageRoute.name: (routeData) {
      final args = routeData.argsAs<IdentityProofPageRouteArgs>(
          orElse: () => const IdentityProofPageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: IdentityProofPage(key: args.key));
    },
    BankDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<BankDetailsPageRouteArgs>(
          orElse: () => const BankDetailsPageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: BankDetailsPage(key: args.key));
    },
    BusinessEmailPageRoute.name: (routeData) {
      final args = routeData.argsAs<BusinessEmailPageRouteArgs>(
          orElse: () => const BusinessEmailPageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: BusinessEmailPage(key: args.key));
    },
    StoreAddressPageRoute.name: (routeData) {
      final args = routeData.argsAs<StoreAddressPageRouteArgs>(
          orElse: () => const StoreAddressPageRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: StoreAddressPage(key: args.key));
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
              RouteConfig(LoginPageRoute.name,
                  path: '', parent: SigningFlowWrapperRoute.name),
              RouteConfig(PasswordPageRoute.name,
                  path: 'password-page', parent: SigningFlowWrapperRoute.name),
              RouteConfig(CreatePasswordPageRoute.name,
                  path: 'create-password-page',
                  parent: SigningFlowWrapperRoute.name),
              RouteConfig(ConfirmPasswordPageRoute.name,
                  path: 'confirm-password-page',
                  parent: SigningFlowWrapperRoute.name)
            ]),
        RouteConfig(MainAppWrapperRoute.name,
            path: '/main-app-wrapper',
            children: [
              RouteConfig(DiscoverPageRoute.name,
                  path: 'discover-page', parent: MainAppWrapperRoute.name),
              RouteConfig(StoreNamePageRoute.name,
                  path: '', parent: MainAppWrapperRoute.name),
              RouteConfig(StoreDetailPageRoute.name,
                  path: 'store-detail-page', parent: MainAppWrapperRoute.name),
              RouteConfig(IdentityProofPageRoute.name,
                  path: 'identity-proof-page',
                  parent: MainAppWrapperRoute.name),
              RouteConfig(BankDetailsPageRoute.name,
                  path: 'bank-details-page', parent: MainAppWrapperRoute.name),
              RouteConfig(BusinessEmailPageRoute.name,
                  path: 'business-email-page',
                  parent: MainAppWrapperRoute.name),
              RouteConfig(StoreAddressPageRoute.name,
                  path: 'store-address-page', parent: MainAppWrapperRoute.name)
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

/// generated route for [MainAppWrapper]
class MainAppWrapperRoute extends PageRouteInfo<void> {
  const MainAppWrapperRoute({List<PageRouteInfo>? children})
      : super(name, path: '/main-app-wrapper', initialChildren: children);

  static const String name = 'MainAppWrapperRoute';
}

/// generated route for [ProfileFlowWrapper]
class ProfileFlowWrapperRoute extends PageRouteInfo<void> {
  const ProfileFlowWrapperRoute({List<PageRouteInfo>? children})
      : super(name, path: '/profile-flow-wrapper', initialChildren: children);

  static const String name = 'ProfileFlowWrapperRoute';
}

/// generated route for [LoginPage]
class LoginPageRoute extends PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({Key? key})
      : super(name, path: '', args: LoginPageRouteArgs(key: key));

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
  const DiscoverPageRoute() : super(name, path: 'discover-page');

  static const String name = 'DiscoverPageRoute';
}

/// generated route for [StoreNamePage]
class StoreNamePageRoute extends PageRouteInfo<StoreNamePageRouteArgs> {
  StoreNamePageRoute({Key? key})
      : super(name, path: '', args: StoreNamePageRouteArgs(key: key));

  static const String name = 'StoreNamePageRoute';
}

class StoreNamePageRouteArgs {
  const StoreNamePageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'StoreNamePageRouteArgs{key: $key}';
  }
}

/// generated route for [StoreDetailPage]
class StoreDetailPageRoute extends PageRouteInfo<StoreDetailPageRouteArgs> {
  StoreDetailPageRoute({Key? key})
      : super(name,
            path: 'store-detail-page',
            args: StoreDetailPageRouteArgs(key: key));

  static const String name = 'StoreDetailPageRoute';
}

class StoreDetailPageRouteArgs {
  const StoreDetailPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'StoreDetailPageRouteArgs{key: $key}';
  }
}

/// generated route for [IdentityProofPage]
class IdentityProofPageRoute extends PageRouteInfo<IdentityProofPageRouteArgs> {
  IdentityProofPageRoute({Key? key})
      : super(name,
            path: 'identity-proof-page',
            args: IdentityProofPageRouteArgs(key: key));

  static const String name = 'IdentityProofPageRoute';
}

class IdentityProofPageRouteArgs {
  const IdentityProofPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'IdentityProofPageRouteArgs{key: $key}';
  }
}

/// generated route for [BankDetailsPage]
class BankDetailsPageRoute extends PageRouteInfo<BankDetailsPageRouteArgs> {
  BankDetailsPageRoute({Key? key})
      : super(name,
            path: 'bank-details-page',
            args: BankDetailsPageRouteArgs(key: key));

  static const String name = 'BankDetailsPageRoute';
}

class BankDetailsPageRouteArgs {
  const BankDetailsPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'BankDetailsPageRouteArgs{key: $key}';
  }
}

/// generated route for [BusinessEmailPage]
class BusinessEmailPageRoute extends PageRouteInfo<BusinessEmailPageRouteArgs> {
  BusinessEmailPageRoute({Key? key})
      : super(name,
            path: 'business-email-page',
            args: BusinessEmailPageRouteArgs(key: key));

  static const String name = 'BusinessEmailPageRoute';
}

class BusinessEmailPageRouteArgs {
  const BusinessEmailPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'BusinessEmailPageRouteArgs{key: $key}';
  }
}

/// generated route for [StoreAddressPage]
class StoreAddressPageRoute extends PageRouteInfo<StoreAddressPageRouteArgs> {
  StoreAddressPageRoute({Key? key})
      : super(name,
            path: 'store-address-page',
            args: StoreAddressPageRouteArgs(key: key));

  static const String name = 'StoreAddressPageRoute';
}

class StoreAddressPageRouteArgs {
  const StoreAddressPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'StoreAddressPageRouteArgs{key: $key}';
  }
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
