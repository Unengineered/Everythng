import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'animations/shimmer_widget.dart';

class EverythngNetworkImage extends StatelessWidget {
  final String url;
  final BoxFit fit;

  final Widget Function(BuildContext, ImageProvider<Object>)? imageBuilder;

  const EverythngNetworkImage({
    Key? key,
    required this.url,
    this.imageBuilder,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, loading) {
        return const ShimmerWidget.rectangular();
      },
      imageBuilder: imageBuilder,
      errorWidget: (context, url, error) {
        return const Icon(
          Icons.error,
        );
      },
      imageUrl: url,
      fit: fit,
      alignment: Alignment.topCenter,
    );
  }
}
