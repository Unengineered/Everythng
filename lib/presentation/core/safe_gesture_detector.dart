import 'package:flutter/material.dart';

class SafeGestureDetector extends StatelessWidget {
  const SafeGestureDetector({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);
  final Widget child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onTap,
      onTap: onTap,
      child: child,
    );
  }
}
