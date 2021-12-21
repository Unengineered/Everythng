import 'package:everythng/application/marketplace/marketplace_cubit.dart';
import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/constants/shadows.dart';
import 'package:everythng/domain/marketplace/entities/marketplace.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'buttons/marketplace_button.dart';

class MarketplaceSwitcher extends StatelessWidget {
  const MarketplaceSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocBuilder<MarketplaceCubit, MarketplaceState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => const CircularProgressIndicator(),
                page: (marketplaceInfo) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      'Select a marketplace',
                      style: context.everythngTextTheme.headline3Bold!.copyWith(
                        color: context
                            .everythngThemeData.textAndIconography!.disabled,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    MarketplaceButton(
                      marketplace: const Marketplace.buying(),
                      active: const Marketplace.buying() ==
                          marketplaceInfo.marketplace,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    MarketplaceButton(
                      marketplace: const Marketplace.thrifting(),
                      active: const Marketplace.thrifting() ==
                          marketplaceInfo.marketplace,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    MarketplaceButton(
                      marketplace: const Marketplace.renting(),
                      active: const Marketplace.renting() ==
                          marketplaceInfo.marketplace,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        boxShadow: everythng2LayerComponentShadow,
                        borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Add your own store',
                              style: context.everythngTextTheme.headline4Bold,
                            ),
                            const SizedBox(
                              width: 4,
                          ),
                          const Icon(
                            Icons.add_rounded,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
