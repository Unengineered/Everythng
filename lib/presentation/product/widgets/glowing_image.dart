import 'dart:ui';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:everythng/presentation/routes/app_router.dart';
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
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: type == GlowingImageType.small ? 424 : 548,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: type == GlowingImageType.small ? null : 34,
              bottom: type == GlowingImageType.small ? 0 : null,
              child: SizedBox(

                height: type == GlowingImageType.small ? 52 : 513,
                width: MediaQuery.of(context).size.width - 68,
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 20.0,
                    sigmaY: 20.0,
                    tileMode: TileMode.decal,
                  ),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitWidth,
                    alignment: const Alignment(0.0, 0.5),
                  ),
                ),
              ),
            ),
            ClipRRect(

              borderRadius: type == GlowingImageType.small ? const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ) : BorderRadius.circular(10),
              child: SizedBox(
                height:type == GlowingImageType.small ? 414 : 537,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  image,
                  scale: 1.5,
                  alignment: type == GlowingImageType.small
                      ? const Alignment(0.0, -0.9)
                      : Alignment.center,
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