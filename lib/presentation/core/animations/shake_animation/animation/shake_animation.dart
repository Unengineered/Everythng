import 'dart:math';

import 'package:everythng/presentation/core/animations/shake_animation/controller/shake_controller.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class ShakeAnimation extends StatelessWidget {
  ShakeAnimation({
    Key? key,
    required this.child,
    required this.shakeController,
  })  : _animation = Tween<double>(begin: 50, end: 100).animate(shakeController),
        super(key: key);
  final Widget child;
  final ShakeController shakeController;
  final Animation _animation;

  Vector3 _shake(double progress) {
    double offset = sin(progress * pi * 10.0);
    return Vector3(offset * 4, 0.0, 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      child: child,
      animation: shakeController,
      builder: (context, child) {
        return Transform(
          transform: Matrix4.translation(_shake(_animation.value)),
          child: child,
        );
      },
    );
  }
}
