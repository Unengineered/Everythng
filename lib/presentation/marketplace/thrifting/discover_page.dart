import 'package:everythng/application/discover/discover_cubit.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/injection.dart';
import 'package:everythng/presentation/core/cards/product_card.dart';
import 'package:everythng/presentation/core/cards/store_card.dart';
import 'package:everythng/presentation/core/everythng_widgets/bottom_navigation_bar/everythng_bottom_navigation_bar.dart';
import 'package:everythng/presentation/marketplace/app_bar/marketplace_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<DiscoverCubit>()..getRecommendations(),
      child: Scaffold(
          body: ListView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            children: [
             MarketPlaceAppBar(),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Clothes',
                style: context.everythngTextTheme.headline3Bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            BlocBuilder<DiscoverCubit, DiscoverState>(
              builder: (context, state) {
                return state.map(
                  loading: (_) {
                    return const SizedBox(
                      height: 10,
                      width: 10,
                      child: CircularProgressIndicator(),
                    );
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
                      return const SizedBox(
                        height: 10,
                        width: 10,
                        child: CircularProgressIndicator(),
                      );
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
                  style: context.everythngTextTheme.headline3Bold,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              BlocBuilder<DiscoverCubit, DiscoverState>(
                builder: (context, state) {
                  return state.map(loading: (_) {
                  return const SizedBox(
                    height: 10,
                    width: 10,
                    child: CircularProgressIndicator(),
                  );

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
                  return const SizedBox(
                    height: 10,
                    width: 10,
                    child: CircularProgressIndicator(),
                  );
                  
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
        bottomNavigationBar: const EverythngBottomNavigationBar(),
      ),
    );
  }
}
