import 'package:everythng/presentation/marketplace/marketplace_switcher.dart';
import 'package:flutter/material.dart';

class RentingPage extends StatelessWidget {
  const RentingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const[
            MarketplaceSwitcher(),
            Text("Renting"),
          ],
        ),
      ),
    );
  }
}
