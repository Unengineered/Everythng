import 'package:everythng/presentation/product/widgets/price_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedPriceInformation extends HookWidget {
  const AnimatedPriceInformation({
    Key? key,
    required this.thriftPrice,
    this.originalPrice,
    required this.shouldAnimate,
  }) : super(key: key);

  final double thriftPrice;
  final double? originalPrice;
  final bool shouldAnimate;

  @override
  Widget build(BuildContext context) {
    AnimationController _controller = useAnimationController(
        initialValue: 0, duration: const Duration(milliseconds: 250));
    Animation<double> _animation =
        Tween<double>(begin: 0, end: 1).animate(_controller);
    if (shouldAnimate) {
      _controller.forward();
    } else {
      if (_controller.isAnimating) {
        _controller.stop();
        _controller.reverse();
      } else if (_controller.isCompleted) {
        _controller.reverse();
      }
    }
    return Offstage(
      offstage: !shouldAnimate,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.scale(
            scale: _animation.value * 0.95 == 0 ? 1 :( 1 - _animation.value * 0.05),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(_animation.value * 10),
              child: PriceInformation(
                thriftPrice: thriftPrice,
                originalPrice: originalPrice,
              ),
            ),
          );
        },
      ),
    );
  }
}
