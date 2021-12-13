import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/application/auth/auth_form_cubit/auth_form_cubit.dart';
import 'package:everythng/application/profile/profile_cubit/profile_cubit.dart';
import 'package:everythng/application/profile/profile_form_cubit/profile_form_cubit.dart';
import 'package:everythng/injection.dart';
import 'package:everythng/presentation/routes/tree_router.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<AuthCubit>()),
          BlocProvider(create: (_) => getIt<AuthFormCubit>()),
          BlocProvider(create: (_) => getIt<ProfileCubit>()),
          BlocProvider(create: (_) => getIt<ProfileFormCubit>())
        ],
        child: TreeRouter(
          router: _appRouter,
          child: MaterialApp.router(
            builder: (context , widget) =>  ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget!),
              // maxWidth: 1200,
              minWidth: 350,
              defaultScale: true,
              breakpoints: const [
                ResponsiveBreakpoint.autoScale(350, name: MOBILE),
                ResponsiveBreakpoint.autoScale(600, name: TABLET),
              ],
            ),
            title: 'Everythng App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: Colors.grey.shade50,
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.grey.shade50,
                )),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          ),
        ));
  }
}
