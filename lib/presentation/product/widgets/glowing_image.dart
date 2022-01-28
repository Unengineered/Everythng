import 'dart:ui';

import 'package:flutter/material.dart';

class GlowingImage extends StatelessWidget {
  const GlowingImage({

    Key? key,
    this.image = 'assets/images/thumbnail.png',
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    //TODO : Use NetworkCachedImages
    return SizedBox(
      height: 424,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 52,
              width: MediaQuery.of(context).size.width,
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
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: SizedBox(
              height: 414,
              child: Image.asset(
                image,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}