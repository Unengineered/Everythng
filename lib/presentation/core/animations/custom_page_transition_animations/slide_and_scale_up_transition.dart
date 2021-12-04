import 'package:flutter/material.dart';

class SlideAndScaleUpTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> parent;
  final Animation<Offset> slideAnimation;
  final Animation<double> scaleUpAnimation;
  SlideAndScaleUpTransition(
      {Key? key, required this.child, required this.parent})
      : slideAnimation =
            Tween<Offset>(begin: const Offset(1, 0), end: const Offset(0, 0))
                .animate(CurvedAnimation(
                    parent: parent,
                    curve: const Interval(0.25, 0.6, curve: Curves.easeIn))),
        scaleUpAnimation = Tween<double>(begin: 0.95, end: 1).animate(
            CurvedAnimation(
                parent: parent,
                curve: const Interval(0.6, 1, curve: Curves.easeIn))),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: ScaleTransition(
        scale: scaleUpAnimation,
        child: child,
      ),
    );
  }
}
