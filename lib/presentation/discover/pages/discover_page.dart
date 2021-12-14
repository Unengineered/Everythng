import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/application/context/context_cubit.dart';
import 'package:everythng/application/discover/discover_cubit.dart';
import 'package:everythng/constants/extensions.dart';
import 'package:everythng/injection.dart';
import 'package:everythng/presentation/core/cards/product_card.dart';
import 'package:everythng/presentation/core/cards/store_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;
    return BlocProvider.value(
      value: getIt<DiscoverCubit>()..getRecommendations(),
      child: Scaffold(
          body: ListView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            children: [
              AppBar(
                elevation: 0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.checkroom_rounded,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Thrifting',
                          style: everythngTextTheme.headline3Bold,
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () => context.read<AuthCubit>().signOut(),
                      child: const Text("Logout"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Clothes',
                  style: everythngTextTheme.headline3Bold,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              BlocBuilder<DiscoverCubit, DiscoverState>(
                builder: (context, state) {
                  return state.map(
                    loading: (_) {
                      return const CircularProgressIndicator();
                    },
                    loaded: (loadedState) {
                      return SizedBox(
                        height: 366,
                        child: ListView.separated(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          physics: const BouncingScrollPhysics(),
                          clipBehavior: Clip.none,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ProductCard(
                                loadedState.recommendedProducts[index]);
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 16,
                            );
                          },
                          itemCount: loadedState.recommendedProducts.length,
                        ),
                      );
                    },
                    initialised: (_) {
                      return const CircularProgressIndicator();
                    },
                    error: (_) {
                      return const Text("Error");
                    },
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Stores',
                  style: everythngTextTheme.headline3Bold,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              BlocBuilder<DiscoverCubit, DiscoverState>(
                builder: (context, state) {
                  return state.map(loading: (_) {
                    return const CircularProgressIndicator();
                  }, loaded: (state) {
                    return ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return StoreCard(state.recommendedStores[index]);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 16,
                        );
                      },
                      itemCount: state.recommendedStores.length,
                    );
                  }, initialised: (_) {
                    return const CircularProgressIndicator();
                  }, error: (_) {
                    return const Text("Error");
                  });
                },
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.grey[50],
              type: BottomNavigationBarType.fixed,
              selectedItemColor: CupertinoColors.activeBlue,
              unselectedItemColor: CupertinoColors.systemBlue,
              currentIndex: 0,
              items: const [
                BottomNavigationBarItem(
                  label: 'Explore',
                  icon: Icon(
                    Icons.travel_explore_outlined,
                    color: Colors.black,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Search',
                  icon: Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Account',
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Cart',
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Saved',
                  icon: Icon(
                    Icons.bookmark_border_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
