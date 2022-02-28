import 'package:everythng/presentation/core/everythng_widgets/appbar/gardient_appbar.dart';
import 'package:everythng/presentation/product/widgets/animated_price_information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPageAppbar extends StatelessWidget {
  const ProductPageAppbar({
    Key? key,
    required this.animationValue,
  }) : super(key: key);
  final ValueNotifier<double> animationValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const GradientAppbar(),
        AnimatedPriceInformation(
          animationValue: animationValue,
        ),
      ],
    );
  }
}
