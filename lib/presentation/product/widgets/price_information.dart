import 'package:everythng/core/extensions/extension_context.dart';
import 'package:flutter/material.dart';
class PriceInformation extends StatelessWidget {

  final double thriftPrice;
  final double? originalPrice;

  const PriceInformation({
    Key? key,
    required this.thriftPrice,
    this.originalPrice,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.fromLTRB(
        30,
        18,
        28,
        18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rs $thriftPrice',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -1.3,
                  color: Colors.white,
                ),
              ),
              if(originalPrice != null) Text(
                'Rs $originalPrice',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.9,
                  decoration: TextDecoration.lineThrough,
                  color: context.everythngThemeData.errorColor,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 32,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Buy Now',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
