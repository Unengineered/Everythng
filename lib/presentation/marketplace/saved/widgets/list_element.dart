import 'package:auto_route/auto_route.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_router.dart';

class ListElement extends StatelessWidget {
  const ListElement({
    Key? key,
    required this.emoji,
    required this.listName, required this.productList,
  }) : super(key: key);
  final String emoji;
  final String listName;
  final List<String> productList;

  factory  ListElement.wishlist(List<String> productList) {
    return  ListElement(
      emoji: '❤',
      listName: 'Wishlist',
      productList: productList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(ItemsPageRoute(
          emoji: emoji,
          listName: listName,
          productList: productList,
        ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child:  Text(
                emoji,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              listName,
              style: context.everythngTextTheme.bodyTextMedium,
            )
          ],
        ),
      ),
    );
  }
}
