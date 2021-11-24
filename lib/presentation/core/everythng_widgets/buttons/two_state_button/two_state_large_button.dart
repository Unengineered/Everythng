import 'package:everythng/presentation/core/everythng_widgets/buttons/two_state_button/two_state_base_button.dart';
import 'package:flutter/material.dart';

class TwoStateLargeButton extends StatelessWidget {
  const TwoStateLargeButton({
    Key? key,
    this.isProcessing = false,
    required this.onTap,
    this.title = 'Continue',
    this.icon = const Icon(
      Icons.arrow_forward,
      color: Colors.white,
    ),
    this.backgroundColor,
  }) : super(key: key);
  final bool isProcessing;
  final Function() onTap;
  final String title;
  final Icon icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TwoStateBaseButton(
      onTap: onTap,
      width: 292,
      title: title,
      icon: icon,
      backgroundColor: backgroundColor,
      isProcessing: isProcessing,
    );
  }
}
