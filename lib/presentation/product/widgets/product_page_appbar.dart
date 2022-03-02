import 'package:everythng/domain/product/entities/detailed_thrift_product.dart';
import 'package:everythng/presentation/core/everythng_widgets/appbar/gradient_appbar.dart';
import 'package:everythng/presentation/product/widgets/animated_price_information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPageAppbar extends StatelessWidget {

  final DetailedThriftProduct product;

  const ProductPageAppbar({
    Key? key,
    required this.product,
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
          thriftPrice: product.price,
          originalPrice: product.originalPrice,
          animationValue: animationValue,
        ),
      ],
    );
  }
}
