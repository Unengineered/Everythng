import 'package:everythng/presentation/core/everythng_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EverythngScaffold(
      body: Center(child: Text("HELLO WELCOME TO HOME PAGE")),
    );
  }
}
