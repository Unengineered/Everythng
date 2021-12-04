import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double height;
  final double width;
  final ShapeBorder shapeBorder;

  const ShimmerWidget.rectangular({Key? key,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : shapeBorder = const RoundedRectangleBorder(), super(key: key);

  const ShimmerWidget.circular({Key? key,
    this.width = double.infinity,
    required this.height,
    this.shapeBorder = const CircleBorder(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500]!,
      highlightColor: Colors.grey[300]!,
      child: Container(
        height: height,
        width: width,
        decoration: ShapeDecoration(
            color: Colors.grey[500],
            shape: shapeBorder
        ),
      ),
    );
  }
}