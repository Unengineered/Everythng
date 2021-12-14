import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/application/profile/profile_cubit/profile_cubit.dart';
import 'package:everythng/injection.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TreeRouter extends StatelessWidget {
  final AppRouter router;
  final Widget child;
  const TreeRouter({Key? key, required this.router, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(listeners: [
      BlocListener<AuthCubit, AuthState>(
        listener: (_, __) => checkStatesAndSetTree(),
      ),
      BlocListener<ProfileCubit, ProfileState>(
        listener: (_, __) => checkStatesAndSetTree(),
      ),
    ], child: child);
  }

  void checkStatesAndSetTree() {
    // log('fired check state and set tree function');
    final stack = router.stack;
    final currentPage = router.current;
    final authState = getIt<AuthCubit>().state;
    final profileState = getIt<ProfileCubit>().state;

    // log("current page ${currentPage.name}");
    // log("auth state $authState");

    authState.map(
        initial: (_) {},
        unauthenticated: (_) {
          if (currentPage.name != LoginPageRoute.name) {
            router.pushAndPopUntil(const SigningFlowWrapperRoute(),
                predicate: (_) => false);
          }
        },
        authenticated: (_) {
          profileState.map(initial: (_) {
            return;
          }, loading: (_) {
            return;
          }, loaded: (_) {
            if (currentPage.name != DiscoverPageRoute.name) {
              router.pushAndPopUntil(const MainAppWrapperRoute(),
                  predicate: (_) => false);
              return;
            }
          }, noData: (_) {
            if (currentPage.name != FirstNamePageRoute.name) {
              router.pushAndPopUntil(const ProfileFlowWrapperRoute(),
                  predicate: (_) => false);
              return;
            }
          });
        });
  }
}
