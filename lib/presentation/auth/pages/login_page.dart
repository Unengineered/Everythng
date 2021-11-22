import 'package:auto_route/auto_route.dart';
import 'package:everythng/application/auth/auth_form_cubit/auth_form_cubit.dart';
import 'package:everythng/constants/extensions.dart';
import 'package:everythng/presentation/core/animations/shake_animation/animation/shake_animation.dart';
import 'package:everythng/presentation/core/animations/shake_animation/controller/shake_controller.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/everythng_two_state_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';

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

    return KeyboardDismissOnTap(
      child: KeyboardVisibilityBuilder(
        builder: (context, visible) {
          return Scaffold(
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
                        style: everythngTextTheme.headline1!,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'some gibberish about something blah blah blah',
                        style: everythngTextTheme.bodyTextMedium!,
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
                            value.fold(
                                (failure) => print("Network error"),
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
