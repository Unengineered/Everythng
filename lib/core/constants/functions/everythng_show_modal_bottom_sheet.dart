import 'package:flutter/material.dart';

Future<T?> showEverythngModalBottomSheet<T>({
  required BuildContext context,
  required Widget child,
}) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        )),
    constraints: BoxConstraints(
      minHeight: 100,
      maxHeight: 400,
      minWidth: MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.width,
    ),
    context: context,
    builder: (context) {
      return child;
    },
  );
}
