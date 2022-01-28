import 'package:flutter/material.dart';

class InformationRow extends StatelessWidget {
  const InformationRow({
    Key? key,
    this.productName = 'Blue overcoat with grey scarf',
    this.logoUrl = 'assets/images/709px-H&M-Logo 1.png',
  }) : super(key: key);

  final String productName;
  final String logoUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 210,
          child: Text(
            productName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: -1.2,
            ),
            maxLines: 2,
          ),
        ),
        SizedBox(
          width: 52,
          child: Image.asset(
            logoUrl,
          ),
        )
      ],
    );
  }
}