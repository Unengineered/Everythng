
import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/application/marketplace/marketplace_cubit.dart';
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
      BlocListener<MarketplaceCubit, MarketplaceState>(
          listener: (_, __) => checkStatesAndSetTree())
    ], child: child);
  }

  void checkStatesAndSetTree() {
    final stack = router.stack;
    final currentPage = router.current;
    final authState = getIt<AuthCubit>().state;
    final profileState = getIt<ProfileCubit>().state;
    final marketplaceSwitcherState = getIt<MarketplaceCubit>().state;

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
            marketplaceSwitcherState.map(
                initial: (_) {
                  return;
                },
                page: (page) {
                  page.marketplace.map(
                      thrifting: (_){
                        if (currentPage.name != ThriftingMarketplaceWrapperRoute.name) {
                          router.pushAndPopUntil(const ThriftingMarketplaceWrapperRoute(),
                              predicate: (_) => false);
                          return;
                        }
                      },
                      renting: (_){
                        if (currentPage.name != RentingMarketplaceWrapperRoute.name) {
                          router.pushAndPopUntil(const RentingMarketplaceWrapperRoute(),
                              predicate: (_) => false);
                          return;
                        }
                      },
                      buying: (_){
                        if (currentPage.name != BuyingMarketplaceWrapperRoute.name) {
                          router.pushAndPopUntil(const BuyingMarketplaceWrapperRoute(),
                              predicate: (_) => false);
                          return;
                        }
                      },
                      store: (_){
                        if (currentPage.name != StoreWrapperRoute.name) {
                          router.pushAndPopUntil(const StoreWrapperRoute(),
                              predicate: (_) => false);
                          return;
                        }
                      },
                  );
                });
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
