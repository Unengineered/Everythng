// import 'package:auto_route/auto_route.dart';
// import 'package:everythng/application/store/store_form_cubit/store_form_cubit.dart';
// import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_large_button.dart';
// import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
// import 'package:everythng/core/extensions/extension_context.dart';
// import 'package:everythng/presentation/routes/app_router.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
// import 'package:provider/provider.dart';
//
// class BusinessEmailPage extends HookWidget {
//   final _formKey = GlobalKey<FormState>();
//
//   BusinessEmailPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final _businessEmailEditingController = useTextEditingController();
//     final _isProcessing = useState(false);
//
//     return KeyboardDismissOnTap(
//       child: KeyboardVisibilityBuilder(
//         builder: (context, visible) {
//           return Scaffold(
//             appBar: AppBar(
//               elevation: 0,
//               automaticallyImplyLeading: false,
//               leading: Navigator.canPop(context)
//                   ? IconButton(
//                 icon: const Icon(
//                   Icons.arrow_back,
//                   color: Colors.black,
//                   size: 32,
//                 ),
//                 onPressed: () => context.router.pop(),
//               )
//                   : null,
//             ),
//             body: AnimatedContainer(
//               duration: const Duration(milliseconds: 100),
//               margin: EdgeInsets.fromLTRB(
//                 20,
//                 64,
//                 20,
//                 visible ? 24 : 48,
//               ),
//               // color: Colors.black38,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'business email',
//                         style: context.everythngTextTheme.headline1Bold!,
//                       ),
//                       const SizedBox(
//                         height: 12,
//                       ),
//                       Text(
//                         'embarrassing old email ids are most welcome',
//                         style:
//                         context.everythngTextTheme.bodyTextMedium!.copyWith(
//                           color: context.everythngThemeData
//                               .textAndIconography.medium,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 24,
//                       ),
//
//                       EverythngBorderlessFormField(
//                         hintText: 'abcd@company.com',
//                         validator: (value) {},
//                         formKey: _formKey,
//                         controller: _businessEmailEditingController,
//                         type: FormFieldType.normal,
//                         enabled: !_isProcessing.value,
//                       ),
//                     ],
//                   ),
//                   Center(
//                     child: TwoStateLargeButton(
//                       isProcessing: _isProcessing.value,
//                       title: 'Continue',
//                       onTap: () {
//                         context.read<StoreFormCubit>().setBuisnessEmail(_businessEmailEditingController.text);
//                         context.router.push(StoreAddressPageRoute());
//
//                       },
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
