import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_large_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:everythng/application/auth/auth_form_cubit/auth_form_cubit.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:auto_route/auto_route.dart';

class ConfirmPasswordPage extends HookWidget {
  ConfirmPasswordPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    final _passwordEditingController = useTextEditingController();
    final _isProcessing = useState(false);

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
                      onPressed: () => context.router.pop()
                    )
                  : null,
            ),
            body: BlocListener<AuthFormCubit, AuthFormState>(
              listenWhen: (p, c) => p.authFailure != c.authFailure,
              listener: (context, state) {
                state.authFailure.fold(() {}, (failure) {
                  failure.maybeMap(
                    userDisabled: (_) {
                      _isProcessing.value = false;
                      //TODO: Add user disabled popup
                      print("User disabled");
                    },
                    orElse: () {
                      _isProcessing.value = false;
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
                          style: context.everythngTextTheme.headline1Bold!,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'you\'ll have to repeat that. I\'m kind of hard of hearing',
                          style:  context.everythngTextTheme.bodyTextMedium!.copyWith(
                          color: context.everythngThemeData
                              .textAndIconography.medium,
                        ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        EverythngBorderlessFormField(
                          hintText: '**********',
                          validator: (value) {
                            if (value ==
                                context.read<AuthFormCubit>().state.password) {
                              return null;
                            } else {
                              return 'Passwords don\'t match';
                            }
                          },
                          enabled: !_isProcessing.value,
                          formKey: _formKey,
                          controller: _passwordEditingController,
                          type: FormFieldType.password,
                        ),
                      ],
                    ),
                    Center(
                      child: TwoStateLargeButton(
                        title: 'Create Account',
                        icon: Icon(
                          Icons.done_rounded,
                          color: context.everythngThemeData.successColor,
                        ),
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            _isProcessing.value = true;
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
