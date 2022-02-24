import 'dart:developer';

import 'package:flutter/material.dart';

class ImagePreviewCarousel extends StatelessWidget {
  const ImagePreviewCarousel({
    Key? key,
    required ValueNotifier<int> selectedIndex,
    required this.carouselList,
    this.horizontalPadding = 18,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  final ValueNotifier<int> _selectedIndex;
  final List carouselList;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: carouselList.length,
        itemBuilder: (context, index) {
          var isSelected = _selectedIndex.value == index;
          return GestureDetector(
            onTap: () {
              log('Tapped $index');
              _selectedIndex.value = index;
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              height: isSelected ? 60 : 56,
              padding: isSelected
                  ? const EdgeInsets.all(5)
                  : const EdgeInsets.all(0),
              decoration: BoxDecoration(
                border: isSelected
                    ? Border.all(color: const Color(0xff76B2D3), width: 2)
                    : null,
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.hardEdge,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(isSelected ? 7 : 10),
                //TODO: Implement network cached image
                child: Image.asset(
                  carouselList[index],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
