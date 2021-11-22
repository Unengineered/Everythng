import 'package:auto_route/auto_route.dart';
import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EverythngScaffold extends StatefulWidget {
  final Widget body;
  final Widget? floatingActionButton;

  const EverythngScaffold({
    Key? key,
    required this.body,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  _EverythngScaffoldState createState() => _EverythngScaffoldState();
}

class _EverythngScaffoldState extends State<EverythngScaffold> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            unauthenticated: () =>
                context.router.replace(const LoginPageRoute()),
            authenticated: (_) =>
                context.router.replace(const HomePageRoute()));
      },
      child: Scaffold(
        floatingActionButton: widget.floatingActionButton,
        body: widget.body,
      ),
    );
  }
}