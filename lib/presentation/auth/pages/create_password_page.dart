import 'package:auto_route/auto_route.dart';
import 'package:everythng/application/auth/auth_form_cubit/auth_form_cubit.dart';
import 'package:everythng/constants/extensions.dart';
import 'package:everythng/presentation/core/everythng_scaffold.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:provider/provider.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/everythng_two_state_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({Key? key}) : super(key: key);

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage>
    with SingleTickerProviderStateMixin {
  final _passwordEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  ValueNotifier<bool> isGreaterThan6 = ValueNotifier(false);

  ValueNotifier<bool> containsSpecialCharacter = ValueNotifier(false);

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
    _passwordEditingController.addListener(() {
      if (_passwordEditingController.text.length > 6) {
        isGreaterThan6.value = true;
      } else {
        isGreaterThan6.value = false;
      }
      if (_passwordEditingController.text.containsSpecialCharacter()) {
        containsSpecialCharacter.value = true;
      } else {
        containsSpecialCharacter.value = false;
      }
    });
  }

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
                        ' Please use special characters and not the name of your special one',
                        style:  everythngTextTheme.headline4Bold!.copyWith(
                          color: everythngThemeData
                              .textAndIconography!['mediumEmphasis'],
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      EverythngBorderlessFormField(
                        formKey: _formKey,
                        textEditingController: _passwordEditingController,
                        type: FormFieldType.password,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ValueListenableBuilder<bool>(
                        valueListenable: isGreaterThan6,
                        builder: (context, isGreaterThan6, child) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                isGreaterThan6
                                    ? Icons.done_rounded
                                    : Icons.close_rounded,
                                color: isGreaterThan6
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
                          );
                        },
                      ),
                      const SizedBox(height: 8),
                      ValueListenableBuilder<bool>(
                        valueListenable: containsSpecialCharacter,
                        builder: (context, containsSpecialCharacter, child) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                containsSpecialCharacter
                                    ? Icons.done_rounded
                                    : Icons.close_rounded,
                                color: containsSpecialCharacter
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
                          );
                        },
                      ),
                    ],
                  ),
                  Center(
                    child: EverythngTwoStateButton(
                      onTap: () {
                        context.read<AuthFormCubit>().setPassword(_passwordEditingController.text);
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
