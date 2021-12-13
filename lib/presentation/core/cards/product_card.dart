import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/constants/shadows.dart';
import 'package:everythng/domain/discover/entities/recommended_product.dart';
import 'package:everythng/presentation/core/cards/single_detail_card.dart';
import 'package:everythng/presentation/core/network_image.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final RecommendedProduct product;
  const ProductCard(
    this.product, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        constraints: const BoxConstraints(
          maxHeight: 366,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: everythngComponentShadow,
        ),
        child: Stack(
          children: [
            Container(
            height: 300,
            width: 259,
            child: EverythngNetworkImage(
              url: product.picture.toString(),
            ),
          ),
            Positioned(
              left: 16,
              right: 8,
              bottom: 12,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SingleDetailCard(
                            child: EverythngNetworkImage(
                              url: product.storeLink!.picture.toString(),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SingleDetailCard(
                            child: Text(
                              product.size,
                              style: context.everythngTextTheme.headline5,
                            ),
                          )
                        ],
                      ),
                      FloatingActionButton.small(
                        onPressed: () {},
                        backgroundColor: Colors.white,
                        elevation: 4,
                        child: const Icon(
                          Icons.add_rounded,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: context.everythngTextTheme.captionSemiBold,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 6,
                                child: EverythngNetworkImage(
                                    url: product.storeLink!.picture.toString()),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                product.storeLink!.name,
                                style:
                                    context.everythngTextTheme.footerSemiBold!.copyWith(
                                  color: context.everythngThemeData
                                      .textAndIconography!['disabled'],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        'Rs. ${product.price}',
                      style: context.everythngTextTheme.headline4Bold!.copyWith(
                        color: context.everythngThemeData
                            .textAndIconography!['mediumEmphasis'],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
