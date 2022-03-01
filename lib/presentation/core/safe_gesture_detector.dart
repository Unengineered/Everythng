import 'package:flutter/material.dart';

class SafeGestureDetector extends StatefulWidget {
  const SafeGestureDetector({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);
  final Widget child;
  final void Function()? onTap;

  @override
  State<SafeGestureDetector> createState() => _SafeGestureDetectorState();
}

class _SafeGestureDetectorState extends State<SafeGestureDetector> {

  bool shrink = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_){
        setState(() {
          shrink = true;
        });
      },
      onTapCancel: (){
        setState(() {
          shrink = false;
        });
      },
      onTapUp: (_){
        setState(() {
          shrink = false;
        });
        if(widget.onTap != null) widget.onTap!();
      },
      child: AnimatedContainer(
        curve: Curves.bounceInOut,
        duration: const Duration(milliseconds: 500),
        child: Transform.scale(
            scale: shrink ? 0.90 : 1,
            child: widget.child
        ),
      ),
    );
  }
}
