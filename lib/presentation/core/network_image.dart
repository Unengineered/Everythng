import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'animations/shimmer_widget.dart';

class EverythngNetworkImage extends StatelessWidget {
  final String url;
  final Widget Function(BuildContext, ImageProvider<Object>)? imageBuilder;
  const EverythngNetworkImage({Key? key, required this.url, this.imageBuilder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, loading) {
        return Transform.scale(
          scale: 1.5,
          child: const ShimmerWidget.rectangular(),
        );
      },
      imageBuilder: imageBuilder,
      errorWidget: (context, url, error) {
        print(error);
        return const Icon(
          Icons.error,
        );
      },
      imageUrl: url,
      fit: BoxFit.fitWidth,
    );
  }
}
