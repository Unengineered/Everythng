import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/presentation/core/everythng_widgets/bottom_navigation_bar/everythng_bottom_navigation_bar.dart';
import 'package:everythng/presentation/marketplace/app_bar/marketplace_app_bar.dart';
import 'package:flutter/material.dart';

class BuyingPage extends StatelessWidget {
  const BuyingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MarketPlaceAppBar(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 350),
            child: Text(
              "We're cutting the best deals from top sustainable fashion brands around, just for you. \nStay tuned!",
              style: context.everythngTextTheme.headline3Bold!.copyWith(
                color: context.everythngThemeData.textAndIconography!.disabled,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const EverythngBottomNavigationBar(),
    );
  }
}
