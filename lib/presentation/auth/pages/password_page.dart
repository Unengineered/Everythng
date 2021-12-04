import 'package:everythng/application/auth/auth_form_cubit/auth_form_cubit.dart';
import 'package:everythng/constants/extensions.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_large_button.dart';

import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:everythng/presentation/core/everythng_widgets/pop_ups/bottom_pop_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';

class PasswordPage extends HookWidget {
  PasswordPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;
    var everythngThemeData = Theme.of(context).everythngThemeData;

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
                      onPressed: () => context.router.pop(),
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
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16),
                        )),
                        constraints: BoxConstraints(
                          maxHeight: 328,
                          minWidth: MediaQuery.of(context).size.width,
                        ),
                        builder: (context) {
                          return const BottomPopUp(
                            title: 'User disabled',
                            message:
                                'The password you\'ve entered is incorrect, please try a different password or use forgot password',
                          );
                        },
                      );
                      print('user disabled');
                    },
                    accountBlocked: (_) {
                      //TODO: Add account blocked popup
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16),
                        )),
                        constraints: BoxConstraints(
                          maxHeight: 328,
                          minWidth: MediaQuery.of(context).size.width,
                        ),
                        builder: (context) {
                          return const BottomPopUp(
                            title: 'Account blocked',
                            message:
                                'The password you\'ve entered is incorrect, please try a different password or use forgot password',
                          );
                        },
                      );
                      print('account blocked');
                    },
                    incorrectPassword: (_) {
                      //TODO: Add incorrect password popup
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16),
                        )),
                        constraints: BoxConstraints(
                          maxHeight: 328,
                          minWidth: MediaQuery.of(context).size.width,
                        ),
                        builder: (context) {
                          return const BottomPopUp(
                            title: 'Incorrect password',
                            message:
                                'The password you\'ve entered is incorrect, please try a different password or use forgot password',
                          );
                        },
                      );
                      print('incorrect password');
                    },
                    orElse: () {
                      //TODO: Add invalid password popup
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16),
                        )),
                        constraints: BoxConstraints(
                          maxHeight: 328,
                          minWidth: MediaQuery.of(context).size.width,
                        ),
                        builder: (context) {
                          return const BottomPopUp(
                            title: 'Invalid error',
                            message:
                                'The password you\'ve entered is incorrect, please try a different password or use forgot password',
                          );
                        },
                      );
                      print('invalid error');
                    },
                  );
                  _isProcessing.value = false;
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
                          'it will be between just the two of us, pinky promise!',
                          style: everythngTextTheme.bodyTextMedium!.copyWith(
                            color: everythngThemeData
                                .textAndIconography!['mediumEmphasis'],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        EverythngBorderlessFormField(
                          enabled: !_isProcessing.value,
                          formKey: _formKey,
                          controller: _passwordEditingController,
                          type: FormFieldType.password,
                        ),
                      ],
                    ),
                    Center(
                      child: TwoStateLargeButton(
                        isProcessing: _isProcessing.value,
                        title: 'Continue',
                        onTap: () {
                          _isProcessing.value = true;
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
