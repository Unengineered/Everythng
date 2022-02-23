import 'dart:ui';

import 'package:everythng/presentation/core/safe_gesture_detector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum GlowingImageType { small, large }

class GlowingImage extends StatelessWidget {
  const GlowingImage({
    Key? key,
    this.image = 'assets/images/thumbnail.png',
    this.type = GlowingImageType.small,
    this.onTap,
  }) : super(key: key);
  final String image;
  final GlowingImageType type;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    //TODO : Use NetworkCachedImages
    return SafeGestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: MediaQuery.of(context).size.height *
            (type == GlowingImageType.small ? 0.5 : 0.58),
        width: MediaQuery.of(context).size.width,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: type == GlowingImageType.small ? null : 34,
              bottom: type == GlowingImageType.small ? 0 : null,
              child: SizedBox(
                height: MediaQuery.of(context).size.height *
                    (type == GlowingImageType.small ? 0.1 : 0.56),
                width: MediaQuery.of(context).size.width -
                    (type == GlowingImageType.small ? 96 : 68),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 20.0,
                    sigmaY: 20.0,
                    tileMode: TileMode.decal,
                  ),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height *
                    (type == GlowingImageType.small ? 0.48 : 0.57),
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  image,
                  scale: 1.5,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
