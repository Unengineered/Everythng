import 'package:auto_route/auto_route.dart';
import 'package:everythng/application/store/store_form_cubit/store_form_cubit.dart';
import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_large_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';

class StoreNamePage extends HookWidget {
  final _formKey = GlobalKey<FormState>();

  StoreNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _storeNameEditingController = useTextEditingController();
    final _isProcessing = useState(false);

    return KeyboardDismissOnTap(
      child: KeyboardVisibilityBuilder(
        builder: (context, visible) {
          return Scaffold(
            body: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: EdgeInsets.fromLTRB(
                20,
                148,
                20,
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
                        'store\'s name',
                        style: context.everythngTextTheme.headline1Bold!,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'embarrassing old email ids are most welcome',
                        style:
                            context.everythngTextTheme.bodyTextMedium!.copyWith(
                          color: context.everythngThemeData
                              .textAndIconography!['mediumEmphasis'],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      EverythngBorderlessFormField(
                        hintText: 'zara',
                        validator: (value) {},
                        formKey: _formKey,
                        controller: _storeNameEditingController,
                        type: FormFieldType.normal,
                        enabled: !_isProcessing.value,
                      ),
                    ],
                  ),
                  Center(
                    child: TwoStateLargeButton(
                      isProcessing: _isProcessing.value,
                      title: 'Continue',
                      onTap: () {
                        context.read<StoreFormCubit>().setStoreName(_storeNameEditingController.text);
                        context.router.push(StoreDetailPageRoute());
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
