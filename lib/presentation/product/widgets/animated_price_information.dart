import 'package:everythng/presentation/product/widgets/price_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedPriceInformation extends HookWidget {
  const AnimatedPriceInformation({
    Key? key,
    required this.thriftPrice,
    this.originalPrice,
    required this.animationValue,
  }) : super(key: key);

  final double thriftPrice;
  final double? originalPrice;
  final ValueNotifier<double> animationValue;

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: animationValue.value == 0,
      child: AnimatedBuilder(
        animation: animationValue,
        builder: (context, child) {
          return Transform.scale(
            scale: animationValue.value * 0.95 == 0
                ? 1
                : (1 - animationValue.value * 0.05),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(animationValue.value * 10),
              child: PriceInformation(
                thriftPrice: thriftPrice,
                originalPrice: originalPrice,),
            ),
          );
        },
      ),
    );
  }
}
