import 'package:auto_route/auto_route.dart';
import 'package:everythng/application/auth/auth_form_cubit/auth_form_cubit.dart';
import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/constants/extensions/extension_string.dart';
import 'package:everythng/presentation/core/animations/shake_animation/animation/shake_animation.dart';
import 'package:everythng/presentation/core/animations/shake_animation/controller/shake_controller.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_large_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';

class LoginPage extends HookWidget {
  final _formKey = GlobalKey<FormState>();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _emailEditingController = useTextEditingController();
    final _shakeController =
        useShakeController();
    final _isProcessing = useState(false);

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
                        style: context.everythngTextTheme.headline1Bold!,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'embarrassing old email ids are most welcome',
                        style: context.everythngTextTheme.bodyTextMedium!.copyWith(
                          color: context.everythngThemeData
                              .textAndIconography!['mediumEmphasis'],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ShakeAnimation(
                        shakeController: _shakeController,
                        child: EverythngBorderlessFormField(
                          hintText: 'abc@everythng.com',
                          validator: (value) {
                            return value!.isValidEmail()
                                ? null
                                : 'Enter a valid email';
                          },
                          formKey: _formKey,
                          controller: _emailEditingController,
                          type: FormFieldType.normal,
                          enabled: !_isProcessing.value,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: TwoStateLargeButton(
                      isProcessing: _isProcessing.value,
                      title: 'Continue',
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          _isProcessing.value = true;
                          context
                              .read<AuthFormCubit>()
                              .setEmail(_emailEditingController.text)
                              .then((value) {
                            _isProcessing.value = false;
                            value.fold(
                                (failure) => print("Network error"),
                                (value) => value
                                    ? context.router.push(PasswordPageRoute())
                                    : context.router
                                        .push(CreatePasswordPageRoute()));
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
