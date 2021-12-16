import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_large_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class BankDetailsPage extends HookWidget {
  final _accountNumberFormKey = GlobalKey<FormState>();
  final _confirmAccountNumberFormKey = GlobalKey<FormState>();
  final _ifscCodeFormKey = GlobalKey<FormState>();
  final _holdersNameFormKey = GlobalKey<FormState>();

  BankDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _accountNumberEditingController = useTextEditingController();
    final _confirmAccountNumberEditingController = useTextEditingController();
    final _ifscCodeEditingController = useTextEditingController();
    final _holdersNameEditingController = useTextEditingController();
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
            body: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: EdgeInsets.fromLTRB(
                20,
                visible ? 0 : 64,
                20,
                visible ? 0 : 48,
              ),
              // color: Colors.black38,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: constraints.maxWidth,
                        minHeight: constraints.maxHeight,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'bank details',
                                style:
                                    context.everythngTextTheme.headline1Bold!,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'embarrassing old email ids are most welcome',
                                style: context
                                    .everythngTextTheme.bodyTextMedium!
                                    .copyWith(
                                  color: context.everythngThemeData
                                      .textAndIconography!['mediumEmphasis'],
                                ),
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                'account number',
                                style:
                                    context.everythngTextTheme.headline4Bold!,
                              ),
                              EverythngBorderlessFormField(
                                hintText: '123456789',
                                validator: (value) {},
                                formKey: _accountNumberFormKey,
                                controller: _accountNumberEditingController,
                                type: FormFieldType.normal,
                                enabled: !_isProcessing.value,
                                textInputAction: TextInputAction.next,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'confirm account number',
                                style:
                                    context.everythngTextTheme.headline4Bold!,
                              ),
                              EverythngBorderlessFormField(
                                hintText: '123456789',
                                validator: (value) {},
                                formKey: _confirmAccountNumberFormKey,
                                controller:
                                    _confirmAccountNumberEditingController,
                                type: FormFieldType.normal,
                                enabled: !_isProcessing.value,
                                textInputAction: TextInputAction.next,

                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'IFSC code',
                                style:
                                    context.everythngTextTheme.headline4Bold!,
                              ),
                              EverythngBorderlessFormField(
                                hintText: 'ABCD0XXXXXX',
                                validator: (value) {},
                                formKey: _ifscCodeFormKey,
                                controller: _ifscCodeEditingController,
                                type: FormFieldType.normal,
                                enabled: !_isProcessing.value,
                                textInputAction: TextInputAction.next,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'holder\'s name',
                                style:
                                    context.everythngTextTheme.headline4Bold!,
                              ),
                              EverythngBorderlessFormField(
                                hintText: 'aditya',
                                validator: (value) {},
                                formKey: _holdersNameFormKey,
                                controller: _holdersNameEditingController,
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
                                // context.router.push(BusinessEmailPageRoute());
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
