import 'package:flutter/material.dart';

class InformationRow extends StatelessWidget {
  final String? productName;
  final Uri? brandLogo;

  const InformationRow({
    Key? key,
    this.productName,
    this.brandLogo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if(productName != null) SizedBox(
          width: 210,
          child: Text(
            productName!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: -1.2,
            ),
            maxLines: 2,
          ),
        ),
        if(brandLogo != null) SizedBox(
          width: 52,
          //TODO: Convert to CachedNetworkImage
          child: Image.asset(
            brandLogo!.toString(),
          ),
        )
      ],
    );
  }
}