import 'package:everythng/application/marketplace/marketplace_cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MarketplaceSwitcher extends StatelessWidget {
  const MarketplaceSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextButton(
              onPressed: () {
                context.read<MarketplaceCubit>().switchToThrifting();
              },
              child: const Text("Thrifting")),
          TextButton(
              onPressed: () {
                context.read<MarketplaceCubit>().switchToRenting();
              },
              child: const Text("Renting")),
          TextButton(
              onPressed: () {
                context.read<MarketplaceCubit>().switchToBuying();
              },
              child: const Text("Buying")),
          TextButton(
              onPressed: () {
                context.read<MarketplaceCubit>().switchToStore();
              },
              child: const Text("Store")),
        ],
      ),
    );
  }
}
