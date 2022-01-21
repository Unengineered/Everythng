import 'package:everythng/core/extensions/extension_context.dart';
import 'package:flutter/material.dart';

class ItemPageAppBar extends StatelessWidget {
  const ItemPageAppBar({
    Key? key,
    required ValueNotifier<bool> isEditing,
  })  : _isEditing = isEditing,
        super(key: key);

  final ValueNotifier<bool> _isEditing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Navigator.canPop(context)
                  ? IconButton(
                      padding: const EdgeInsets.all(0),
                      alignment: Alignment.centerLeft,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 32,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  : Container(),
              const Text(
                '❤',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'Wishlist',
                style: context.everythngTextTheme.headline3Bold,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              _isEditing.value = !_isEditing.value;
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _isEditing.value
                    ? const Color(0xff007AFF)
                    : Colors.transparent,
              ),
              padding: _isEditing.value
                  ? const EdgeInsets.symmetric(vertical: 6, horizontal: 20)
                  : const EdgeInsets.all(0),
              child: Text(
                _isEditing.value ? 'DONE' : 'EDIT',
                style: TextStyle(
                  color:
                      _isEditing.value ? Colors.white : const Color(0xff007AFF),
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
