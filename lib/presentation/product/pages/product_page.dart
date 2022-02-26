import 'package:auto_route/auto_route.dart';
import 'package:everythng/core/constants/constant_lists.dart';
import 'package:everythng/core/extensions/extension_global_key.dart';
import 'package:everythng/domain/product/entities/detailed_thrift_product.dart';
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
  final DetailedThriftProduct product;
  ProductPage({Key? key, required this.product}) : super(key: key);
  final GlobalKey _buttonKey = GlobalKey();

  // final String heroTag;

  @override
  Widget build(BuildContext context) {
    final _selectedIndex = useState(0);
    final _scrollController = useScrollController();
    var _physics = useState(const ScrollPhysics());
    final _offStage = useState(false);

    _scrollController.addListener(() {
      if (_buttonKey.getGlobalYOffset <=
              MediaQuery.of(context).padding.top + 80 &&
          _buttonKey.getGlobalYOffset >= 0 &&
          !_offStage.value) {
        _offStage.value = true;
      }
      if (_buttonKey.getGlobalYOffset >= 133) {
        _offStage.value = false;
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
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: const ScrollBehavior(),
              child: GlowingOverscrollIndicator(
                showLeading: false,
                showTrailing: false,
                axisDirection: AxisDirection.down,
                color: Colors.transparent,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: _physics.value,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 90,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 48),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: InformationRow(
                          productName: product.name,
                          brandLogo: product.brand?.logo,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Offstage(
                        offstage: _offStage.value,
                        child: PriceInformation(
                          thriftPrice: product.price,
                          originalPrice: product.originalPrice,
                          key: _buttonKey,
                        ),
                      ),
                      SizedBox(
                        height: _offStage.value ? 80 : 0,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child:
                            SizeDescriptionCard(sizeChart: product.sizeChart),
                      ),
                      if (product.description != null) ...[
                        const SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: ProductDescriptionElement(
                              description: product.description!),
                        ),
                      ],
                      if (product.issues != null) ...[
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
                      ],
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 18),
                        child: SafeGestureDetector(
                          onTap: () {
                            context.router.push(
                                StorePageRoute(storeLink: product.storeLink));
                          },
                          child: StoreLinkCard(
                            storeLink: product.storeLink,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ProductPageAppbar(
              product: product,
              shouldAnimate: _offStage.value,
            ),
          ],
        ),
      ),
    );
  }
}
