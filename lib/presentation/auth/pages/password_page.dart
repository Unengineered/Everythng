import 'package:everythng/application/auth/auth_form_cubit/auth_form_cubit.dart';
import 'package:everythng/constants/extensions.dart';
import 'package:everythng/presentation/core/everythng_scaffold.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/everythng_two_state_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';

class PasswordPage extends StatelessWidget {
  PasswordPage({Key? key}) : super(key: key);
  final _passwordEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;
    var everythngThemeData = Theme.of(context).everythngThemeData;

    return KeyboardDismissOnTap(
      child: KeyboardVisibilityBuilder(
        builder: (context, visible) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              leading: Navigator.canPop(context)
                  ? IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 32,
                      ),
                      onPressed: () => context.router.pop(),
                    )
                  : null,
            ),
            body: BlocListener<AuthFormCubit, AuthFormState>(
              listenWhen: (p, c) => p.authFailure != c.authFailure,
              listener: (context, state) {
                state.authFailure.fold(() {}, (failure) {
                  failure.maybeMap(
                    userDisabled: (_){
                      //TODO: Add user disabled popup
                      print('user disabled');
                    },
                    accountBlocked: (_){
                      //TODO: Add account blocked popup
                      print('account blocked');
                    },
                    incorrectPassword: (_) {
                      //TODO: Add incorrect password popup
                      print('incorrect password');
                    },
                    orElse: () {
                      //TODO: Add invalid password popup
                      print('invalid password');
                    },
                  );
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                margin: EdgeInsets.fromLTRB(
                  16,
                  64,
                  16,
                  visible ? 24 : 48,
                ),
                // color: Colors.black38,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'welcome back,\nenter your password',
                          style: everythngTextTheme.headline1Bold!,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'It will be between just the two of us. Pinky promise!',
                          style: everythngTextTheme.headline4Bold!.copyWith(
                          color: everythngThemeData
                              .textAndIconography!['mediumEmphasis'],
                        ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        EverythngBorderlessFormField(
                          formKey: _formKey,
                          textEditingController: _passwordEditingController,
                          type: FormFieldType.password,
                        ),
                      ],
                    ),
                    Center(
                      child: EverythngTwoStateButton(
                        onTap: () {
                          context
                              .read<AuthFormCubit>()
                              .setPassword(_passwordEditingController.text);
                          context
                              .read<AuthFormCubit>()
                              .signInWithEmailAndPassword();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
