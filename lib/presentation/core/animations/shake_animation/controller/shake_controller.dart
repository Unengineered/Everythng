
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

shake(AnimationController controller) async {
  if (controller.status == AnimationStatus.completed) {
    await controller.reverse();
  } else {
    await controller.forward();
  }
}

// ShakeController useShakeController({
//   Duration? duration,
//   Duration? reverseDuration,
//   String? debugLabel,
//   double initialValue = 0,
//   double lowerBound = 0,
//   double upperBound = 1,
//   TickerProvider? vsync,
//   AnimationBehavior animationBehavior = AnimationBehavior.normal,
//   List<Object?>? keys,
// }){
//   vsync ??= useSingleTickerProvider(keys: keys);
//
//   return use(ShakeController(vsync: vsync));
//
// }