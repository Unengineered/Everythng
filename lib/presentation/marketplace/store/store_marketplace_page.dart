import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/presentation/core/everythng_widgets/bottom_navigation_bar/everythng_bottom_navigation_bar.dart';
import 'package:everythng/presentation/marketplace/app_bar/marketplace_app_bar.dart';
import 'package:flutter/material.dart';

class StoreMarketplacePage extends StatelessWidget {
  const StoreMarketplacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MarketPlaceAppBar(),
          Center(
            child: Text(
              "We're cutting the best deals from top sustainable fashion brands around, just for you. Stay tuned",
              style: context.everythngTextTheme.headline1Bold,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const EverythngBottomNavigationBar(),
    );
  }
}
