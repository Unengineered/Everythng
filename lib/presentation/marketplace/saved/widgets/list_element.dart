import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';

class ListElement extends StatelessWidget {
  const ListElement({
    Key? key,
    required this.emoji,
    required this.listName,
  }) : super(key: key);
  final String emoji;
  final String listName;

  factory  ListElement.wishlist() {
    return const ListElement(
      emoji: '❤',
      listName: 'Wishlist',
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(ItemsPageRoute(
          emoji: emoji,
          listName: listName,
        ));
      },
      child: Container(
        height: 53,
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
                  fontSize: 16,
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
