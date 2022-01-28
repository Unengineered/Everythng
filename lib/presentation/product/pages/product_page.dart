

import 'dart:developer';

import 'package:everythng/presentation/product/widgets/advertisement_card.dart';
import 'package:everythng/presentation/product/widgets/issues_list.dart';
import 'package:everythng/presentation/product/widgets/product_description_element.dart';
import 'package:everythng/presentation/product/widgets/size_description_card.dart';
import 'package:everythng/presentation/product/widgets/glowing_image.dart';
import 'package:everythng/presentation/product/widgets/image_preview_carousel.dart';
import 'package:everythng/presentation/product/widgets/information_row.dart';
import 'package:everythng/presentation/product/widgets/price_information.dart';
import 'package:everythng/presentation/product/widgets/product_page_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final GlobalKey _buttonKey = GlobalKey();
class ProductPage extends HookWidget {
  const ProductPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final _selectedIndex = useState(0);
    final _scrollController = useScrollController();
    var _physics = useState(const ScrollPhysics());
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      RenderBox box = _buttonKey.currentContext!.findRenderObject() as RenderBox;
      Offset position = box.localToGlobal(Offset.zero);
      log('Button Position : ' + position.toString());
      log('Controller Position : ' +_scrollController.offset.toString() );
    });

    _scrollController.addListener(() {

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
                      const GlowingImage(),
                      const SizedBox(
                        height: 20,
                      ),
                      ImagePreviewCarousel(selectedIndex: _selectedIndex),
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
                       PriceInformation(key: _buttonKey,),
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
                      const AdvertisementCard(),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const ProductPageAppbar(),
          ],
        ),
      ),
    );
  }
}












