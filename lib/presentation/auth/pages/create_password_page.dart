import 'package:auto_route/auto_route.dart';
import 'package:everythng/application/auth/auth_form_cubit/auth_form_cubit.dart';
import 'package:everythng/constants/extensions.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/everythng_two_state_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class CreatePasswordPage extends HookWidget {
  final _formKey = GlobalKey<FormState>();
  CreatePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;
    var everythngThemeData = Theme.of(context).everythngThemeData;

    final _isGreaterThan6 = useState(false);
    final _containsSpecialCharacter = useState(false);
    final _passwordController = useTextEditingController();

    final _animationController =
        useAnimationController(duration: const Duration(milliseconds: 500));
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
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  : null,
            ),
            body: AnimatedContainer(
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
                        'create password for your account',
                        style: everythngTextTheme.headline1Bold!,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'please use special characters and not the name of your special one',
                        style: everythngTextTheme.bodyTextMedium!.copyWith(
                          color: everythngThemeData
                              .textAndIconography!['mediumEmphasis'],
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      EverythngBorderlessFormField(
                        onChanged: (value) {
                          if (value.length > 6) {
                            _isGreaterThan6.value = true;
                          } else {
                            _isGreaterThan6.value = false;
                          }
                          if (value.containsSpecialCharacter()) {
                            _containsSpecialCharacter.value = true;
                          } else {
                            _containsSpecialCharacter.value = false;
                          }
                        },
                        formKey: _formKey,
                        controller: _passwordController,
                        type: FormFieldType.password,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            _isGreaterThan6.value
                                ? Icons.done_rounded
                                : Icons.close_rounded,
                            color: _isGreaterThan6.value
                                ? everythngThemeData.successColor
                                : everythngThemeData.errorColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'must be greater than 6 letters',
                            style: everythngTextTheme.bodyTextSemiBold!
                                .copyWith(color: Colors.grey[700]),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            _containsSpecialCharacter.value
                                ? Icons.done_rounded
                                : Icons.close_rounded,
                            color: _containsSpecialCharacter.value
                                ? everythngThemeData.successColor
                                : everythngThemeData.errorColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'must contain special character',
                            style: everythngTextTheme.bodyTextSemiBold!
                                .copyWith(color: Colors.grey[700]),
                          )
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: EverythngTwoStateButton(
                      onTap: () {
                        context
                            .read<AuthFormCubit>()
                            .setPassword(_passwordController.text);
                        context.router.push(ConfirmPasswordPageRoute());
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
