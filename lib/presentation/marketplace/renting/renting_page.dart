import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/presentation/core/everythng_widgets/bottom_navigation_bar/everythng_bottom_navigation_bar.dart';
import 'package:everythng/presentation/marketplace/app_bar/marketplace_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RentingPage extends StatelessWidget {
  const RentingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MarketPlaceAppBar(),
      body: Center(
        child: Text(
          " Handpicking clothes that you can rent for special occasions Everythng Rentals, \nComing soon!",
          style: context.everythngTextTheme.headline3Bold!.copyWith(
            color: context.everythngThemeData.textAndIconography!.disabled,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      bottomNavigationBar: const EverythngBottomNavigationBar(),
    );
  }
}
