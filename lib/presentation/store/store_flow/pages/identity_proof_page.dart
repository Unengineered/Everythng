import 'package:auto_route/auto_route.dart';
import 'package:everythng/application/store/store_cubit/store_cubit.dart';
import 'package:everythng/application/store/store_form_cubit/store_form_cubit.dart';
import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/constants/shadows.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_large_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class IdentityProofPage extends HookWidget {
  final _panCardNumberFormKey = GlobalKey<FormState>();

  IdentityProofPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isProcessing = useState(false);
    final _panCardNumberEditingController = useTextEditingController();
    final ImagePicker _picker = ImagePicker();

    return KeyboardDismissOnTap(
      child: KeyboardVisibilityBuilder(
        builder: (context, visible) {
          return BlocListener<StoreCubit, StoreState>(
            listener: (context, state) {
              state.maybeMap(
                error: (errorState) {
                  errorState.storeFailure.maybeMap(
                      uploadFailed: (_) {
                        //TODO: Add upload failed popup
                      },
                      orElse: () {});
                },
                orElse: () {},
              );
            },
            child: Scaffold(
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
                margin: const EdgeInsets.fromLTRB(
                  20,
                  64,
                  20,
                  48,
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
                          'identity proof',
                          style: context.everythngTextTheme.headline1Bold!,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'embarrassing old email ids are most welcome',
                          style: context.everythngTextTheme.bodyTextMedium!
                              .copyWith(
                            color: context.everythngThemeData
                                .textAndIconography!['mediumEmphasis'],
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          'pancard number',
                          style: context.everythngTextTheme.headline4Bold!,
                        ),
                        EverythngBorderlessFormField(
                          hintText: '123456789',
                          validator: (value) {},
                          formKey: _panCardNumberFormKey,
                          controller: _panCardNumberEditingController,
                          type: FormFieldType.normal,
                          enabled: !_isProcessing.value,
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () async {
                            await _picker
                                .pickImage(source: ImageSource.gallery)
                                .then((file) {
                              context.read<StoreFormCubit>().setIdentityProof(
                                  file!, _panCardNumberEditingController.text);
                            });
                          },
                          child: Container(
                            height: 204,
                            width: MediaQuery.of(context).size.width - 40,
                            padding: const EdgeInsets.only(
                              bottom: 24,
                            ),
                            decoration: BoxDecoration(
                              boxShadow: everythng2LayerComponentShadow,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.insert_photo_outlined,
                                  size: 60,
                                  color: context.everythngThemeData
                                      .textAndIconography!['disabled'],
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                Text(
                                  'add identity proof',
                                  style: context
                                      .everythngTextTheme.bodyTextSemiBold!
                                      .copyWith(
                                    color: context.everythngThemeData
                                        .textAndIconography!['disabled'],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: TwoStateLargeButton(
                        isProcessing: _isProcessing.value,
                        title: 'Continue',
                        onTap: () {
                          context.router.push(BankDetailsPageRoute());
                        },
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
