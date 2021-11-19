import 'package:everythng/constants/extended_text_theme.dart';
import 'package:everythng/constants/extended_theme_data.dart';
import 'package:everythng/constants/extensions.dart';
import 'package:flutter/material.dart';

class EverythngTwoStateButton extends StatefulWidget {
  const EverythngTwoStateButton({
    Key? key,
    required this.textController,
    required this.onTap,
    this.title = 'Continue',
    this.icon = const Icon(
      Icons.arrow_forward,
      color: Colors.white,
    ),
  }) : super(key: key);

  final TextEditingController textController;
  final Function() onTap;
  final String title;
  final Icon icon;

  @override
  State<EverythngTwoStateButton> createState() =>
      _EverythngTwoStateButtonState();
}

class _EverythngTwoStateButtonState extends State<EverythngTwoStateButton> {
  ValueNotifier<bool> isEnabled = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    widget.textController.addListener(() {
      if (widget.textController.text.isEmpty) {
        isEnabled.value = false;
      } else {
        isEnabled.value = true;
      }
    });
  }

  @override
  void dispose() {
    widget.textController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ExtendedThemeData everythngThemeData =
        Theme.of(context).everythngThemeData;
    final ExtendedTextTheme everythngTextTheme =
        Theme.of(context).textTheme.everythngTextTheme;
    return StreamBuilder<Object>(
      stream: null,
      builder: (context, snapshot) {
        return ValueListenableBuilder<bool>(
          valueListenable: isEnabled,
          builder: (context, isEnabled, child) {
            return GestureDetector(
              onTap: isEnabled ? widget.onTap : null,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 104,
                ),
                decoration: BoxDecoration(
                  color: isEnabled
                      ? everythngThemeData.textAndIconography!['highEmphasis']
                      : everythngThemeData.textAndIconography!['disabled'],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.title,
                      style: everythngTextTheme.headline4!
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    widget.icon,
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
