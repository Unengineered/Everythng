import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemsGrid extends HookWidget {
  const ItemsGrid({
    Key? key,
    required ValueNotifier<bool> isEditing,
  })
      : _isEditing = isEditing,
        super(key: key);

  final ValueNotifier<bool> _isEditing;

  @override
  Widget build(BuildContext context) {
    final _controller = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );
    if (_isEditing.value) {
      _controller.forward();
    } else {
      if (_controller.isCompleted) {
        _controller.reverse();
      } else {
        _controller.reset();
      }
    }
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      clipBehavior: Clip.none,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Badge(
          elevation: 0,
          showBadge: _isEditing.value,
          badgeColor: Colors.white,
          badgeContent: GestureDetector(
            onTap: () {},
            child: Container(
                padding: const EdgeInsets.all(1),
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade200,
                ),
                child: const Icon(Icons.close_rounded)),
          ),
          child: ScaleTransition(
            scale: Tween<double>(begin: 1, end: 0.95).animate(_controller),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        );
      },
    );
  }
}
