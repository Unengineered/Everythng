import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // NOTE: This function executes once after every build, it is fine to check the authState once,
    // but if you decide add an animation on this page, add a checker so that the checkAuthState()
    // function isn't called after every build as animations call the build function repeatedly.
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      final cubit = context.read<AuthCubit>();
      if (cubit.state == const AuthState.initial()) cubit.splashAuthCheck();
    });

    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: Text("SPLASH"),
          ),
        );
      },
    );
  }
}
