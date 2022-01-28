import 'package:flutter/material.dart';

class SizeInformationElement extends StatelessWidget {
  const SizeInformationElement({
    Key? key,
    this.logoUrl = 'assets/images/709px-H&M-Logo 1.png',
    this.size = 'M',
  }) : super(key: key);
  final String logoUrl;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 52,
            child: Image.asset(
              logoUrl,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            size.toUpperCase(),
            style: const TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w600,
              letterSpacing: -2,
            ),
          )
        ],
      ),
    );
  }
}