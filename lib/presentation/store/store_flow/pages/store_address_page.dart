import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_large_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class StoreAddressPage extends HookWidget {
  StoreAddressPage({Key? key}) : super(key: key);
  final _lineOneFormKey = GlobalKey<FormState>();
  final _lineTwoFormKey = GlobalKey<FormState>();
  final _pinCodeFormKey = GlobalKey<FormState>();
  final _cityFormKey = GlobalKey<FormState>();
  final _stateFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _lineOneEditingController = useTextEditingController();
    final _lineTwoEditingController = useTextEditingController();
    final _pinCodeEditingController = useTextEditingController();
    final _cityEditingController = useTextEditingController();
    final _stateEditingController = useTextEditingController();
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
              clipBehavior: Clip.none,
              duration: const Duration(milliseconds: 100),
              margin: EdgeInsets.fromLTRB(
                16,
                visible ? 0 : 64,
                16,
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
                                'your address',
                                style:
                                    context.everythngTextTheme.headline1Bold!,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'it will be between just the two of us, pinky promise!',
                                style: context
                                    .everythngTextTheme.bodyTextMedium!
                                    .copyWith(
                                  color: context.everythngThemeData
                                      .textAndIconography!['mediumEmphasis'],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                'line 1',
                                style:
                                    context.everythngTextTheme.headline4Bold!,
                              ),
                              EverythngBorderlessFormField(
                                hintText: 'Shop/Store/Garage No.',
                                enabled: !_isProcessing.value,
                                formKey: _lineOneFormKey,
                                controller: _lineOneEditingController,
                                type: FormFieldType.normal,
                                textInputAction: TextInputAction.next,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'line 2',
                                style:
                                    context.everythngTextTheme.headline4Bold!,
                              ),
                              EverythngBorderlessFormField(
                                hintText: 'Area/Sector/Block No.',
                                enabled: !_isProcessing.value,
                                formKey: _lineTwoFormKey,
                                controller: _lineTwoEditingController,
                                type: FormFieldType.normal,
                                textInputAction: TextInputAction.next,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'pincode',
                                        style: context
                                            .everythngTextTheme.headline4Bold!,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        child: EverythngBorderlessFormField(
                                          hintText: '400001',
                                          enabled: !_isProcessing.value,
                                          formKey: _pinCodeFormKey,
                                          controller: _pinCodeEditingController,
                                          type: FormFieldType.normal,
                                          textInputAction: TextInputAction.next,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'city',
                                        style: context
                                            .everythngTextTheme.headline4Bold!,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.55,
                                        child: EverythngBorderlessFormField(
                                          hintText: 'Mumbai',
                                          enabled: !_isProcessing.value,
                                          formKey: _cityFormKey,
                                          controller: _cityEditingController,
                                          type: FormFieldType.normal,
                                          textInputAction: TextInputAction.next,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'state',
                                style:
                                    context.everythngTextTheme.headline4Bold!,
                              ),
                              EverythngBorderlessFormField(
                                hintText: 'Maharashtra',
                                enabled: !_isProcessing.value,
                                formKey: _stateFormKey,
                                controller: _stateEditingController,
                                type: FormFieldType.normal,
                                textInputAction: TextInputAction.done,
                              ),
                            ],
                          ),
                          Center(
                            child: TwoStateLargeButton(
                              isProcessing: _isProcessing.value,
                              title: 'Continue',
                              onTap: () {},
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
