import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_large_button.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class BottomPopUp extends StatelessWidget {
  final String title;
  final String message;

  const BottomPopUp({Key? key, required this.title, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        40,
        28,
        40,
        24,
      ),
      child: Column(
        children: [
          Icon(
            Icons.block_rounded,
            size: 84,
            color: context.everythngThemeData.errorColor,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            title,
            style: context.everythngTextTheme.headline2SemiBold!,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            // 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin interdum metus sed est.',
            message,
            style: context.everythngTextTheme.bodyTextMedium!.copyWith(
              color: context.everythngThemeData.textAndIconography!.medium,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          TwoStateLargeButton(
            onTap: () {
             context.router.pop();
            },
            title: 'Ok',
            backgroundColor: context.everythngThemeData.primaryColor,
          )
        ],
      ),
    );
  }
}
