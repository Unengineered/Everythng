import 'package:everythng/constants/extensions.dart';
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

    final everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;
    final everythngThemeData = Theme.of(context).everythngThemeData;
    return Container(
      clipBehavior: Clip.hardEdge,
      constraints: const BoxConstraints(
        maxWidth: 259,
        maxHeight: 366,
      ),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: everythngComponentShadow,
      ),

      child: Stack(
        children: [
    SizedBox(
    height: 300,
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
                    //TODO: ListView building
                    Row(
                      children: [
                        SingleDetailCard(
                          child:EverythngNetworkImage(
    url: product.storeLink!.picture.toString(),
    ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SingleDetailCard(
                          child: Text(
                            'M',
                            style: everythngTextTheme.headline5,
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
                          style: everythngTextTheme.captionSemiBold,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            CircleAvatar(
                              radius: 6,
                              child: Image.asset('assets/images/placeholder.png'),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
    product.storeLink!.name,
                              style: everythngTextTheme.footerSemiBold!.copyWith(
                                color: everythngThemeData.textAndIconography!['disabled'],
                              ),

                            )
                          ],
                        )
                      ],
                    ),
                    Text(
                      'Rs. 345',
                      style: everythngTextTheme.headline4Bold!.copyWith(
                          color: everythngThemeData.textAndIconography!['mediumEmphasis']
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

        ],
    );
  }
}