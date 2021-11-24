import 'package:everythng/application/auth/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

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
        return  Scaffold(
          body: Center(
            child: SvgPicture.asset('assets/images/Everythng_logo.svg',width: 90,),
          ),
        );
      },
    );
  }
}
