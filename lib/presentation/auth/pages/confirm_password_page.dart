import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:everythng/application/auth/auth_form_cubit/auth_form_cubit.dart';
import 'package:everythng/constants/extensions.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/everythng_two_state_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class ConfirmPasswordPage extends StatelessWidget {
  ConfirmPasswordPage({Key? key}) : super(key: key);
  final passwordEditingController = TextEditingController();
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
              automaticallyImplyLeading: false,
              leading: Navigator.canPop(context)
                  ? IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 32,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  : null,
            ),
            body: BlocListener<AuthFormCubit, AuthFormState>(
              listenWhen: (p, c) => p.authFailure != c.authFailure,
              listener: (context, state) {
                state.authFailure.fold(() {}, (failure) {
                  failure.maybeMap(
                    userDisabled: (_) {
                      //TODO: Add user disabled popup
                      print("User disabled");
                    },
                    orElse: () {
                      //TODO: Add invalid failure popup
                      print("invalid failure");
                    },
                  );
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
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
                          'confirm password to create account',
                          style: everythngTextTheme.headline1Bold!,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'you\'ll have to repeat that. I\'m kind of hard of hearing',
                          style:  everythngTextTheme.bodyTextMedium!.copyWith(
                          color: everythngThemeData
                              .textAndIconography!['mediumEmphasis'],
                        ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        EverythngBorderlessFormField(
                          validator: (value) {
                            if (value ==
                                context.read<AuthFormCubit>().state.password) {
                              return null;
                            } else {
                              return 'Passwords don\'t match';
                            }
                          },
                          formKey: _formKey,
                          controller: passwordEditingController,
                          type: FormFieldType.password,
                        ),
                      ],
                    ),
                    Center(
                      child: EverythngTwoStateButton(
                        title: 'Create Account',
                        icon: Icon(
                          Icons.done_rounded,
                          color: everythngThemeData.successColor,
                        ),
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            context
                                .read<AuthFormCubit>()
                                .registerWIthEmailAndPassword();
                          }
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
