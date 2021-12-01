import 'package:flutter/material.dart';

class SingleDetailCard extends StatelessWidget {
  final double side;
  final Widget child;

  const SingleDetailCard({
    Key? key,
    this.side = 28,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: child.runtimeType == Text ? 4 : 8,
        horizontal: 4,
      ),
      height: side,
      width: side,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
              blurRadius: 14,
              color: Colors.black12,
            )
          ]),
      child: Center(child: child),
    );
  }
}