import 'dart:ui';

import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/domain/discover/entities/recommended_product.dart';
import 'package:everythng/presentation/core/network_image.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  //TODO: change this to detailed thrift product
  final RecommendedProduct product;

  const ProductCard(
    this.product, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.6,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6 - 16,
              height: MediaQuery.of(context).size.height * 0.08,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 20.0,
                  sigmaY: 20.0,
                  tileMode: TileMode.decal,
                ),
                child: EverythngNetworkImage(
                  url: product.picture.toString(),
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              // boxShadow: everythng6LayerComponentShadow,
            ),
            child: Stack(
              children: [
                SizedBox(
                  width: 259,
                  // child: Image.asset(
                  //   'assets/images/thumbnail.png',
                  //   fit: BoxFit.cover,
                  // ),
                  child: EverythngNetworkImage(
                    url: product.picture.toString(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: EverythngNetworkImage(
                        url: product.storeLink!.logo.toString(),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${product.price}',
                            style: context.everythngTextTheme.bodyTextMedium!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
