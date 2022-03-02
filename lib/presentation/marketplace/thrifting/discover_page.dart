import 'package:auto_route/auto_route.dart';
import 'package:everythng/application/today/today_cubit.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/injection.dart';
import 'package:everythng/presentation/core/cards/product_card.dart';
import 'package:everythng/presentation/core/everythng_widgets/bottom_navigation_bar/everythng_bottom_navigation_bar.dart';
import 'package:everythng/presentation/core/safe_gesture_detector.dart';
import 'package:everythng/presentation/marketplace/app_bar/marketplace_app_bar.dart';
import 'package:everythng/presentation/marketplace/thrifting/widgets/store_card.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  static int lastTimeClicked = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<TodayCubit>()..initialise(),
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: [
            MarketPlaceAppBar(),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Clothes',
                style: context.everythngTextTheme.headline3Bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            BlocBuilder<TodayCubit, TodayState>(
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
                      height: 360,
                      width: 360,
                      child: (loadedState.products != null) ? loadedState.products!.fold(
                              (failure) => Text("Error: $failure"),
                              (products){
                                return ListView.separated(
                                  padding: const EdgeInsets.only(left: 18, right: 18),
                                  physics: const BouncingScrollPhysics(),
                                  clipBehavior: Clip.none,
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return SafeGestureDetector(
                                      onTap: () {
                                        context.router.push(ProductPageRoute(product: products[index]));
                                      },
                                      child: ProductCard(
                                          products[index]),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      width: 16,
                                    );
                                  },
                                  itemCount: products.length,
                                );
                              }
                      ) : const Text("loading"),
                    );
                  },
                  initial: (_) {
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
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                'Stores',
                style: context.everythngTextTheme.headline3Bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            BlocBuilder<TodayCubit, TodayState>(
              builder: (context, state) {
                return state.map(loading: (_) {
                  return const SizedBox(
                    height: 10,
                    width: 10,
                    child: CircularProgressIndicator(),
                  );
                }, loaded: (loadedState) {

                  if(loadedState.stores == null) return const Text("loading stores");

                  return loadedState.stores!.fold((failure) => Text("Error: $failure"), (stores){
                    return GridView.builder(
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                        crossAxisSpacing: 15.0,
                        mainAxisSpacing: 20.0,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return SafeGestureDetector(
                          onTap: () {
                            context.router.push(StorePageRoute(storeLink: stores[index]));
                          },
                          child: StoreCard(stores[index]),
                        );
                      },
                      itemCount: stores.length,
                    );
                  });
                }, initial: (_) {
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
