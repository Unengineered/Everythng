import 'package:auto_route/auto_route.dart';
import 'package:everythng/application/store/store_cubit/store_page_cubit.dart';
import 'package:everythng/domain/core/store_link.dart';
import 'package:everythng/injection.dart';
import 'package:everythng/presentation/core/cards/store_link_card.dart';
import 'package:everythng/presentation/core/everythng_widgets/appbar/gradient_appbar.dart';
import 'package:everythng/presentation/core/safe_gesture_detector.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StorePage extends StatelessWidget {
  final StoreLink storeLink;
  const StorePage({Key? key, required this.storeLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) =>
            getIt.get<StorePageCubit>()..initialise(storeLink: storeLink),
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 70,
                      ),
                      BlocBuilder<StorePageCubit, StorePageState>(
                          builder: (context, state) {
                        return StoreLinkCard(storeLink: storeLink);
                      }),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'Products',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          letterSpacing: -1.2,
                        ),
                      ),
                      BlocBuilder<StorePageCubit, StorePageState>(
                          builder: (context, state) {
                        return state.map(initial: (state) {
                          return const Text("INITIAL");
                        }, loaded: (loadedState) {
                          if (loadedState.storeProducts == null) {
                            return const Text("LOADING PRODUCTS");
                          }

                          return loadedState.storeProducts!.fold(
                              (l) => const Text("PRODUCT FAILURE"), (products) {
                            return GridView.builder(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 24),
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 12,
                                crossAxisSpacing: 12,
                                childAspectRatio: 0.8,
                              ),
                              itemCount: products.length,
                              itemBuilder: (context, index) {
                                return SafeGestureDetector(
                                  onTap: () {
                                    context.router.push(ProductPageRoute(
                                        product: products[index]));
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/akshi.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            );
                          });
                        }, error: (state) {
                          return const Text("ERROR");
                        }, loading: (state) {
                          return const Text("LOADING");
                        });
                      }),

                      // const Text(
                      //   'Sold Products',
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.w600,
                      //     fontSize: 20,
                      //     letterSpacing: -1.2,
                      //   ),
                      // ),
                      // GridView.builder(
                      //   padding: const EdgeInsets.only(top: 12, bottom: 24),
                      //   physics: const NeverScrollableScrollPhysics(),
                      //   shrinkWrap: true,
                      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      //     crossAxisCount: 2,
                      //     mainAxisSpacing: 12,
                      //     crossAxisSpacing: 12,
                      //     childAspectRatio: 0.8,
                      //   ),
                      //   itemCount: 4,
                      //   itemBuilder: (context, index) {
                      //     return ClipRRect(
                      //       borderRadius: BorderRadius.circular(12),
                      //       child: Stack(
                      //         fit: StackFit.expand,
                      //         children: [
                      //           Image.asset(
                      //             'assets/images/rakshita.png',
                      //             fit: BoxFit.cover,
                      //           ),
                      //           Align(
                      //             alignment: const Alignment(-0.8, -0.85),
                      //             child: Container(
                      //               decoration: BoxDecoration(
                      //                 color: Colors.black,
                      //                 borderRadius: BorderRadius.circular(5),
                      //               ),
                      //               padding: const EdgeInsets.symmetric(
                      //                   vertical: 6, horizontal: 8),
                      //               child: const Text(
                      //                 'Sold',
                      //                 style: TextStyle(
                      //                   fontWeight: FontWeight.w600,
                      //                   color: Colors.white,
                      //                   fontSize: 8,
                      //                   letterSpacing: -0.2,
                      //                 ),
                      //               ),
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //     );
                      //   },
                      // ),
                    ],
                  ),
                ),
              ),
              const GradientAppbar()
            ],
          ),
        ),
      ),
    );
  }
}
