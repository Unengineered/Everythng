import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:everythng/constants/extensions.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_large_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class AddressPage extends HookWidget {
  AddressPage({Key? key}) : super(key: key);
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
    var everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;
    var everythngThemeData = Theme.of(context).everythngThemeData;

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
                16,
                64,
                16,
                visible ? 24 : 48,
              ),
              // color: Colors.black38,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'your address',
                          style: everythngTextTheme.headline1Bold!,
                        ),
                        const SizedBox(
                          height: 8,
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
                        Text(
                          'line one (flat number, etc)',
                          style: everythngTextTheme.headline4Bold!,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        EverythngBorderlessFormField(
                          hintText: 'A-402',
                          enabled: !_isProcessing.value,
                          formKey: _lineOneFormKey,
                          controller: _lineOneEditingController,
                          type: FormFieldType.normal,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'line two (building name, etc)',
                          style: everythngTextTheme.headline4Bold!,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        EverythngBorderlessFormField(
                          hintText: 'Sea Queen Heritage',
                          enabled: !_isProcessing.value,
                          formKey: _lineTwoFormKey,
                          controller: _lineTwoEditingController,
                          type: FormFieldType.normal,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'pincode',
                          style: everythngTextTheme.headline4Bold!,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        EverythngBorderlessFormField(
                          hintText: '400705',
                          enabled: !_isProcessing.value,
                          formKey: _pinCodeFormKey,
                          controller: _pinCodeEditingController,
                          type: FormFieldType.normal,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'city',
                          style: everythngTextTheme.headline4Bold!,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        EverythngBorderlessFormField(
                          hintText: 'Navi Mumbai',
                          enabled: !_isProcessing.value,
                          formKey: _cityFormKey,
                          controller: _cityEditingController,
                          type: FormFieldType.normal,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'state',
                          style: everythngTextTheme.headline4Bold!,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        EverythngBorderlessFormField(
                          hintText: 'Maharashtra',

                          enabled: !_isProcessing.value,
                          formKey: _stateFormKey,
                          controller: _stateEditingController,
                          type: FormFieldType.normal,
                        ),
                        const SizedBox(
                          height: 8,
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
            ),
          );
        },
      ),
    );
  }
}
