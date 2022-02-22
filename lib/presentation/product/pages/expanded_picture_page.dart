import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:everythng/presentation/product/widgets/glowing_image.dart';
import 'package:everythng/presentation/product/widgets/image_preview_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pinch_zoom_image_last/pinch_zoom_image_last.dart';

class ExpandedPicturePage extends HookWidget {
  const ExpandedPicturePage({
    Key? key,
    required this.productName,
    required this.selectedIndex,
    required this.carouselList,
  }) : super(key: key);
  final String productName;
  final ValueNotifier<int> selectedIndex;
  final List carouselList;

  @override
  Widget build(BuildContext context) {
    final _controller =
        useAnimationController(duration: const Duration(milliseconds: 250));

    final Animation<double> _animation =
        Tween<double>(begin: 1, end: 0).animate(_controller);
    return Hero(
      tag: 'product',
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: Navigator.canPop(context)
              ? IconButton(
                  padding: const EdgeInsets.only(top: 20),
                  icon: const Icon(
                    CupertinoIcons.chevron_back,
                    color: Colors.black,
                    size: 32,
                  ),
                  onPressed: () => context.router.pop(),
                )
              : null,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(34, 20, 125, 0),
                child: FadeTransition(
                  opacity: _animation,
                  child: Text(
                    productName,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -1.6,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.0),
                child: PinchZoomImage(
                  hideStatusBarWhileZooming: true,
                  onZoomStart: () {
                    if (_controller.isCompleted) {
                      _controller.reset();
                    }
                    _controller.forward();
                  },
                  onZoomEnd: () {
                    if (_controller.isAnimating) {
                      _controller.stop();
                    }
                    _controller.reverse();
                  },
                  image: const GlowingImage(
                    type: GlowingImageType.large,
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              FadeTransition(
                opacity: _animation,
                child: ImagePreviewCarousel(
                  horizontalPadding: 34,
                  selectedIndex: selectedIndex,
                  carouselList: carouselList,
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
