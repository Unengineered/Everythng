import 'dart:developer';

import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/injection.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthRouter extends StatelessWidget {
  final AppRouter router;
  final Widget child;
  const AuthRouter({Key? key, required this.router, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(listeners: [
      BlocListener<AuthCubit, AuthState>(
        listener: (_, __) => checkStatesAndSetTree(),
      ),
    ], child: child);
  }

  void checkStatesAndSetTree(){
    log('fired check state and set tree function');
    final currentPage = router.current;
    final authState = getIt<AuthCubit>().state;

    log("current page ${currentPage.name}");
    log("auth state $authState");

    authState.map(
        initial: (_){},
        unauthenticated: (_){
          if(currentPage.name != LoginPageRoute.name){
            router.pushAndPopUntil(LoginPageRoute(),
                predicate: (_) => false);
          }
        },
        authenticated: (_){

          if(currentPage.name != DiscoverPageRoute.name){
            router.pushAndPopUntil(const DiscoverPageRoute(),
                predicate: (_) => false);
            return;
          }
        });
  }
}
