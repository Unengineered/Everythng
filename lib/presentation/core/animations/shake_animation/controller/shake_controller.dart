
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class ShakeController extends AnimationController {
  ShakeController({
    required TickerProvider vsync,
    duration = const Duration(milliseconds: 300),
    this.shakeCount = 3,
  }) : super(
    vsync: vsync,
    duration: duration,
  );
  final int shakeCount;

  shake() async {
    if (status == AnimationStatus.completed) {
      await reverse();
    } else {
      await forward();
    }
  }
}
