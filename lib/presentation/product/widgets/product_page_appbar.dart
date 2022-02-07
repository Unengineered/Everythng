import 'package:everythng/presentation/product/widgets/animated_price_information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPageAppbar extends StatelessWidget {
  const ProductPageAppbar({
    Key? key,
    required this.shouldAnimate,
  }) : super(key: key);
  final bool shouldAnimate;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 80,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.71),
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(20, 16, 10, 0),
            child: Row(
              children: const [
                Icon(
                  CupertinoIcons.chevron_back,
                  color: Colors.white,
                  size: 32,
                ),
              ],
            ),
          ),
        ),
        AnimatedPriceInformation(
          shouldAnimate: shouldAnimate,
        ),
      ],
    );
  }
}