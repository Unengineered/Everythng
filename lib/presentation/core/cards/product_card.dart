import 'package:everythng/core/constants/shadows.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/domain/discover/entities/recommended_product.dart';
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
      // constraints: const BoxConstraints(
      //   maxHeight: 366,
      // ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: everythng6LayerComponentShadow,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: 259,
            child: Image.asset(
              'assets/images/thumbnail.png',
              fit: BoxFit.cover,
            ),
            // child: EverythngNetworkImage(
            //   url: product.picture.toString(),
            // ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 18,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: EverythngNetworkImage(
                    url: product.storeLink!.logo.toString()),
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
                        color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${product.price}',
                        style: context.everythngTextTheme.bodyTextMedium!
                            .copyWith(color: Colors.white),
                      ),
                    )),
              ),
            ),
          )

          //   Container(
          //   height: 300,
          //   width: 259,
          //   child: EverythngNetworkImage(
          //     url: product.picture.toString(),
          //   ),
          // ),
          //   Positioned(
          //     left: 16,
          //     right: 8,
          //     bottom: 12,
          //     child: Column(
          //       children: [
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Row(
          //               children: [
          //                 if(product.brand != null) ...[SingleDetailCard(
          //                   child: EverythngNetworkImage(
          //                     url: product.brand!.toString(),
          //                   ),
          //                 ),
          //                 const SizedBox(
          //                   width: 8,
          //                 )],
          //                 SingleDetailCard(
          //                   child: Text(
          //                     product.size,
          //                     style: context.everythngTextTheme.headline5,
          //                   ),
          //                 )
          //               ],
          //             ),
          //             FloatingActionButton.small(
          //               onPressed: () {},
          //               backgroundColor: Colors.white,
          //               elevation: 4,
          //               child: const Icon(
          //                 Icons.add_rounded,
          //                 color: Colors.black,
          //               ),
          //             )
          //           ],
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   product.name,
          //                   style: context.everythngTextTheme.captionSemiBold,
          //                 ),
          //                 const SizedBox(
          //                   height: 4,
          //                 ),
          //                 Row(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: [
          //                     CircleAvatar(
          //                       backgroundColor: Colors.transparent,
          //                       radius: 6,
          //                       child: EverythngNetworkImage(
          //                           url: product.storeLink!.logo.toString()),
          //                     ),
          //                     const SizedBox(
          //                       width: 4,
          //                     ),
          //                     Text(
          //                       product.storeLink!.name,
          //                       style:
          //                           context.everythngTextTheme.footerSemiBold!.copyWith(
          //                         color: context.everythngThemeData
          //                             .textAndIconography.disabled,
          //                       ),
          //                     )
          //                   ],
          //                 )
          //               ],
          //             ),
          //             Text(
          //               'Rs. ${product.price}',
          //             style: context.everythngTextTheme.headline4Bold!.copyWith(
          //               color: context.everythngThemeData
          //                   .textAndIconography.medium,
          //             ),
          //           )
          //         ],
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
