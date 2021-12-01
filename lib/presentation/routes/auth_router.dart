import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
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
    return BlocListener<AuthCubit, AuthState>(
      child: child,
      listenWhen: (_, __) => true,
      listener: (context, state) {
        state.when(
            initial: () {},
            unauthenticated: () {
              router.pushAndPopUntil(LoginPageRoute(), predicate: (_) => false);
            },
            authenticated: (_) {
              router.pushAndPopUntil(const DiscoverPageRoute(), predicate: (_) => false);
            });
      },
    );
  }
}
