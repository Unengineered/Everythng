import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:everythng/constants/shadows.dart';
import 'package:everythng/domain/discover/entities/recommended_store.dart';
import 'package:everythng/presentation/core/network_image.dart';
import 'package:flutter/material.dart';


class StoreCard extends StatelessWidget {
  final RecommendedStore store;
  const StoreCard(
    this.store, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: everythng6LayerComponentShadow,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      store.name,
                      style: context.everythngTextTheme.headline3Bold,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      store.tagline!,
                      style: context.everythngTextTheme.footerSemiBold,
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                  height: 42,
                  child: EverythngNetworkImage(
                    url: store.picture.toString(),
                    fit: BoxFit.fitHeight,
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.black12,
            thickness: 1,
            height: 14,
          ),
          Container(
            height: 140,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: store.products.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width >= 400 ? 100 : 90,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: EverythngNetworkImage(
                    url: store.products[index].picture.toString(),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 16,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
