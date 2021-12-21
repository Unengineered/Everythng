
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EverythngBottomNavigationBar extends StatelessWidget {
  const EverythngBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.grey[50],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: CupertinoColors.activeBlue,
        unselectedItemColor: CupertinoColors.systemBlue,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(
              Icons.travel_explore_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Saved',
            icon: Icon(
              Icons.bookmark_border_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}