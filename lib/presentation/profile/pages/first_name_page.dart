import 'package:everythng/application/profile/profile_form_cubit/profile_form_cubit.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_large_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';

class FirstNamePage extends HookWidget {
   FirstNamePage({Key? key}) : super(key: key);
   final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _firstNameEditingController = useTextEditingController();
   final _isProcessing = useState(false);

    return KeyboardDismissOnTap(
      child: KeyboardVisibilityBuilder(
        builder: (context , visible) {
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
                        'your first name',
                        style: context.everythngTextTheme.headline1Bold!,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'it will be between just the two of us, pinky promise!',
                        style: context.everythngTextTheme.bodyTextMedium!.copyWith(
                          color: context.everythngThemeData
                              .textAndIconography.medium,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      EverythngBorderlessFormField(
                        hintText: 'advait',
                        enabled: !_isProcessing.value,
                        formKey: _formKey,
                        controller: _firstNameEditingController,
                        type: FormFieldType.normal,
                      ),
                    ],
                  ),
                  Center(
                    child: TwoStateLargeButton(
                      isProcessing: _isProcessing.value,
                      title: 'Continue',
                      onTap: () {
                        context.read<ProfileFormCubit>().setFirstName(_firstNameEditingController.text);
                        context.router.push(LastNamePageRoute());
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
