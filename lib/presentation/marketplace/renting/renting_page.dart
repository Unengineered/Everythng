import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/presentation/marketplace/marketplace_switcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RentingPage extends StatelessWidget {
  const RentingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () => context.read<AuthCubit>().signOut(),
              child: const Text("Logout"),
            ),
            const MarketplaceSwitcher(),
            const Text("Store"),
          ],
        ),
      ),
    );
  }
}
