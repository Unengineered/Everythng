import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:everythng/core/constants/constant_lists.dart';
import 'package:everythng/core/extensions/extension_global_key.dart';
import 'package:everythng/presentation/core/cards/store_link_card.dart';
import 'package:everythng/presentation/product/widgets/glowing_image.dart';
import 'package:everythng/presentation/product/widgets/image_preview_carousel.dart';
import 'package:everythng/presentation/product/widgets/information_row.dart';
import 'package:everythng/presentation/product/widgets/issues_list.dart';
import 'package:everythng/presentation/product/widgets/price_information.dart';
import 'package:everythng/presentation/product/widgets/product_description_element.dart';
import 'package:everythng/presentation/product/widgets/product_page_appbar.dart';
import 'package:everythng/presentation/product/widgets/size_description_card.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../core/safe_gesture_detector.dart';

class ProductPage extends HookWidget {
  ProductPage({Key? key}) : super(key: key);
  final GlobalKey _buttonKey = GlobalKey();

  // final String heroTag;

  @override
  Widget build(BuildContext context) {
    final _selectedIndex = useState(0);
    final _scrollController = useScrollController();
    var _physics = useState(const ScrollPhysics());
    var _animationValue = useState(0.0);

    _scrollController.addListener(() {
      if (_buttonKey.getGlobalYOffset >= 0 &&
          _buttonKey.getGlobalYOffset < 120) {
        _animationValue.value = 1 - (_buttonKey.getGlobalYOffset / 133);
      }
      if (_buttonKey.getGlobalYOffset >= 120) {
        _animationValue.value = 0;
      }
      if (_scrollController.position.pixels < 0) {
        _scrollController.animateTo(0,
            duration: const Duration(milliseconds: 50),
            curve: Curves.easeInExpo);
      }
      if (_scrollController.position.pixels <= 56) {
        _physics.value = const ClampingScrollPhysics();
      } else {
        _physics.value = const BouncingScrollPhysics();
      }
    });
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              physics: _physics.value,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 48),
                    child: GlowingImage(
                      onTap: () {
                        context.router.push(
                          ExpandedPicturePageRoute(
                            selectedIndex: _selectedIndex,
                            carouselList: imageCarouselList,
                            productName: 'Blue overcoat with grey scarf',
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  ImagePreviewCarousel(
                    carouselList: imageCarouselList,
                    selectedIndex: _selectedIndex,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: InformationRow(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Offstage(
                    offstage: _animationValue.value != 0,
                    child: PriceInformation(
                      key: _buttonKey,
                    ),
                  ),
                  SizedBox(
                    height: _animationValue.value != 0 ? 80 : 0,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: SizeDescriptionCard(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: ProductDescriptionElement(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18, bottom: 12),
                    child: Text(
                      'Issues',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -1.3,
                      ),
                    ),
                  ),
                  const IssuesList(),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
                    child: SafeGestureDetector(
                      onTap: () {
                        context.router.push(const StorePageRoute());
                      },
                      child: const StoreLinkCard(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            ProductPageAppbar(
              animationValue: _animationValue,
            ),
          ],
        ),
      ),
    );
  }
}
