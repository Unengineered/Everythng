
import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/application/marketplace/marketplace_cubit.dart';
import 'package:everythng/core/constants/functions/everythng_show_modal_bottom_sheet.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/presentation/marketplace/marketplace_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MarketPlaceAppBar extends AppBar {
  MarketPlaceAppBar({
    Key? key,
  }) : super(
          key: key,
          title: Builder(
            builder: (context) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showEverythngModalBottomSheet(
                        context: context,
                        child: const MarketplaceSwitcher(),
                      );
                    },
                    child: BlocBuilder<MarketplaceCubit, MarketplaceState>(
                      builder: (context, state) {
                return state.map(
                  initial: (_) => Container(),
                  page: (marketPlaceInfo) {
                    return Row(
                      children: [
                        const Icon(
                          Icons.checkroom_rounded,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          marketPlaceInfo.marketplace.maybeMap(
                            renting: (_) => 'Renting',
                            thrifting: (_) => 'Thrifting',
                            buying: (_) => 'Buying',
                            orElse: () => '',
                          ),
                          style: context
                              .everythngTextTheme.headline3Bold,
                        )
                      ],
                    );
                          },
                        );
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.read<AuthCubit>().signOut(),
                    child: const Text("Logout"),
                  ),
                ],
              );
            },
          ),
          elevation: 0,
        );
}
