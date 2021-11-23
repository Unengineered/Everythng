import 'package:everythng/constants/extensions.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/everythng_two_state_button.dart';
import 'package:flutter/material.dart';

class BottomPopUp extends StatelessWidget {
  const BottomPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;
    final everythngThemeData = Theme.of(context).everythngThemeData;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        40,
        28,
        40,
        24,
      ),
      child: Column(
        children:  [
          Icon(
            Icons.block_rounded,
            size: 84,
            color: everythngThemeData.errorColor,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'Account Blocked',
            style: everythngTextTheme.headline2SemiBold!,

          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin interdum metus sed est.',
            style: everythngTextTheme.bodyTextMedium!.copyWith(
              color: everythngThemeData.textAndIconography!['mediumEmphasis'],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height : 32
          ),
          EverythngTwoStateButton(
            onTap: () {
              Navigator.pop(context);
            },
            title: 'Ok',
            backgroundColor: everythngThemeData.primaryColor,
          )
        ],
      ),
    );
  }
}
