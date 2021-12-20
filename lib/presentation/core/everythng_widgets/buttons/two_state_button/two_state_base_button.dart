
import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:flutter/material.dart';

class TwoStateBaseButton extends StatefulWidget {
  const TwoStateBaseButton({
    Key? key,
    required this.onTap,
    required this.title ,
    required this.icon ,
    this.backgroundColor,
    required this.isProcessing ,
    required this.width,
  }) : super(key: key);

  final bool isProcessing;
  final Function() onTap;
  final String title;
  final Icon icon;
  final Color? backgroundColor;
  final double width;

  @override
  State<TwoStateBaseButton> createState() => _TwoStateBaseButtonState();
}

class _TwoStateBaseButtonState extends State<TwoStateBaseButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !widget.isProcessing ? widget.onTap : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.backgroundColor ??
              (!widget.isProcessing
                  ? context.everythngThemeData.textAndIconography!.high
                  : context.everythngThemeData.textAndIconography!.disabled),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: widget.isProcessing
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.title,
                      style: context.everythngTextTheme.headline4Bold!
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    widget.icon,
                  ],
                ),
        ),
      ),
    );
  }
}
