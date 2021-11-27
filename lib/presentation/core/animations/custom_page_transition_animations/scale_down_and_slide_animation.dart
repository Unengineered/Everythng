import 'package:flutter/material.dart';

class ScaleDownAndSlideTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> parent;
  final Animation<double> scaleDownAnimation;
  final Animation<Offset> slideAnimation;
  ScaleDownAndSlideTransition(
      {Key? key, required this.child, required this.parent})
       : scaleDownAnimation = Tween<double>(begin: 1, end: 0.95).animate(
            CurvedAnimation(
                parent: parent,
                curve: const Interval(0, 0.4, curve: Curves.easeIn))),
        slideAnimation =
            Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-1, 0))
                .animate(CurvedAnimation(
                    parent: parent,
                    curve: const Interval(0.35, 0.7, curve: Curves.easeIn))),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: SlideTransition(
        position: slideAnimation,
        child: ScaleTransition(
          scale: scaleDownAnimation,
          child: child,
        ),
      ),
    );
  }
}
