import 'package:everythng/constants/extensions.dart';
import 'package:everythng/presentation/core/animations/shake_animation/animation/shake_animation.dart';
import 'package:everythng/presentation/core/animations/shake_animation/controller/shake_controller.dart';
import 'package:everythng/presentation/core/everythng_scaffold.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/everythng_two_state_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:everythng/presentation/core/everythng_widgets/pop_ups/bottom_pop_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();

  var isProcessing = false;

  final emailEditingController = TextEditingController();
  late ShakeController _shakeController;

  @override
  initState() {
    super.initState();
    _shakeController = ShakeController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;
    final everythngThemeData = Theme.of(context).everythngThemeData;

    return KeyboardDismissOnTap(
      child: KeyboardVisibilityBuilder(
        builder: (context, visible) {
          return EverythngScaffold(
            body: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: EdgeInsets.fromLTRB(
                16,
                148,
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
                        'enter your email',
                        style: everythngTextTheme.headline1Bold!,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        ' Embarrassing old IDs are most welcome',
                        style: everythngTextTheme.headline4Bold!.copyWith(
                          color: everythngThemeData
                              .textAndIconography!['mediumEmphasis'],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ShakeAnimation(
                        shakeController: _shakeController,
                        child: EverythngBorderlessFormField(
                          validator: (value) {
                            return value!.isValidEmail()
                                ? null
                                : 'Enter a valid email';
                          },
                          formKey: _formKey,
                          textEditingController: emailEditingController,
                          type: FormFieldType.email,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: EverythngTwoStateButton(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              topLeft: Radius.circular(16),
                            )
                          ),
                          constraints:  BoxConstraints(
                            maxHeight: 328,
                            minWidth: MediaQuery.of(context).size.width,
                          ),
                          builder: (context) {
                            return const BottomPopUp();
                          },
                        );
                        // if (_formKey.currentState!.validate()) {
                        //   setState(() {
                        //     isProcessing = true;
                        //   });
                        //   context
                        //       .read<AuthFormCubit>()
                        //       .setEmail(emailEditingController.text)
                        //       .then((value) {
                        //     setState(() {
                        //       isProcessing = false;
                        //     });
                        //     value.fold(
                        //         (failure) => print("Network error"),
                        //         (value) => value
                        //             ? context.router.push(PasswordPageRoute())
                        //             : context.router
                        //                 .push(const CreatePasswordPageRoute()));
                        //   });
                        //   //context.router.push(const CreatePasswordPageRoute());
                        // } else {
                        //   _shakeController.shake();
                        // }
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            isProcessing = true;
                          });
                          context
                              .read<AuthFormCubit>()
                              .setEmail(emailEditingController.text)
                              .then((value) {
                            setState(() {
                              isProcessing = false;
                            });
                            value.fold((failure) {
                              //TODO: Add popup for server error
                              print("Network error");
                            },
                                (value) => value
                                    ? context.router.push(PasswordPageRoute())
                                    : context.router
                                        .push(const CreatePasswordPageRoute()));
                          });
                          //context.router.push(const CreatePasswordPageRoute());
                        } else {
                          _shakeController.shake();
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
