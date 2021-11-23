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
    HomePageRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const HomePage());
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
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashPageRoute.name, path: '/'),
        RouteConfig(HomePageRoute.name, path: '/home-page'),
        RouteConfig(LoginPageRoute.name, path: '/login-page'),
        RouteConfig(PasswordPageRoute.name, path: '/password-page'),
        RouteConfig(CreatePasswordPageRoute.name,
            path: '/create-password-page'),
        RouteConfig(ConfirmPasswordPageRoute.name,
            path: '/confirm-password-page')
      ];
}

/// generated route for [SplashPage]
class SplashPageRoute extends PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for [LoginPage]
class LoginPageRoute extends PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({Key? key})
      : super(name, path: '/login-page', args: LoginPageRouteArgs(key: key));

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
            path: '/password-page', args: PasswordPageRouteArgs(key: key));

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
            path: '/create-password-page',
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
            path: '/confirm-password-page',
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
