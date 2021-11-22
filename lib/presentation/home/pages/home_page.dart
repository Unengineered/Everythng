import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
              onPressed: () => context.read<AuthCubit>().signOut(),
              child: const Text("Logout"))),
    );
  }
}
