import 'package:everythng/constants/extensions.dart';
import 'package:everythng/constants/shadows.dart';
import 'package:everythng/domain/discover/entities/recommended_store.dart';
import 'package:everythng/presentation/core/network_image.dart';
import 'package:flutter/material.dart';

//TODO : Integrate with API
class StoreCard extends StatelessWidget {
  final RecommendedStore store;
  const StoreCard(
    this.store, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;
    return Container(
      height: 236,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: everythngComponentShadow,
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
                      style: everythngTextTheme.headline3Bold,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      store.tagline!,
                      style: everythngTextTheme.footerSemiBold,
                    ),
                  ],
                ),
                // Image.asset(
                //   'assets/images/logo.png',
                //   height: 42,
                // ),
                SizedBox(
                  width: 40,
                  height: 42,
                  child: EverythngNetworkImage(url: store.picture.toString()),
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
                  width: 100,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: EverythngNetworkImage(url: store.products[index].picture.toString(),)
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
