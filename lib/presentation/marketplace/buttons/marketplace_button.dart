import 'package:everythng/application/marketplace/marketplace_cubit.dart';
import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/constants/shadows.dart';
import 'package:everythng/domain/marketplace/entities/marketplace.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MarketplaceButton extends StatelessWidget {
  final Marketplace marketplace;
  final bool active;

  const MarketplaceButton(
      {Key? key, required this.marketplace, required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final cubit = context.read<MarketplaceCubit>();
        marketplace.maybeMap(
            renting: (_) => cubit.switchToRenting(),
          thrifting: (_) => cubit.switchToThrifting(),
          buying: (_) => cubit.switchToBuying(),
          orElse: () {},
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          boxShadow: everythng2LayerComponentShadow,
          borderRadius: BorderRadius.circular(8),
          color: active ? Colors.grey.shade800 : Colors.white,
        ),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  marketplace.maybeMap(
                    renting: (_) => 'Renting',
                    thrifting: (_) => 'Thrifting',
                    buying: (_) => 'Buying',
                    orElse: () => '',
                  ),
                  style: context.everythngTextTheme.headline3Bold!.copyWith(
                    color: active ? Colors.white : null,
                  ),
                ),
                Text(
                  'catchy thrifting line',
                  style: context.everythngTextTheme.captionMedium!.copyWith(
                    color: active ? Colors.white : null,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
