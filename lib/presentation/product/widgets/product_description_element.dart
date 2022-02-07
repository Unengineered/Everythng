import 'package:everythng/core/constants/constant_strings.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDescriptionElement extends StatelessWidget {
  const ProductDescriptionElement({
    Key? key, this.description = li,
  }) : super(key: key);
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Description',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            letterSpacing: -1.3,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        ReadMoreText(
          description,
          colorClickableText: const Color(0xff007AFF),
          trimLines: 4,
          trimMode: TrimMode.Line,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.8,
            color: context.everythngThemeData
                .textAndIconography.medium,
          ),
          trimCollapsedText: 'Read more',
          trimExpandedText: 'Read less',
        ),
      ],
    );
  }
}