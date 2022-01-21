import 'dart:math';

import 'package:emojis/emoji.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/presentation/marketplace/saved/widgets/show_emoji_keyboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CreateListElement extends HookWidget {
  const CreateListElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isTapped = useState(false);
    final _errorText = useState('');
    TextEditingController _listNameController = TextEditingController();
    final _emoji = useState(Emoji.byKeyword('plus').first.toString());
    return GestureDetector(
      onTap: () {
        List<String> _emojiList = Emoji.all()
            .where((element) => (element.toString().length == 2 ||
                element.toString().length == 1))
            .map((e) => e.toString().trim())
            .toList();
        if (!_isTapped.value) {
          _emoji.value =
              _emojiList[Random().nextInt(_emojiList.length)].characters.first;
        }
        // _isTapped.value = true;

        showEmojiKeyboard(context, _emoji, _isTapped);
      },
      child: Column(
        children: [
          Container(
            height: 53,
            padding: _isTapped.value
                ? const EdgeInsets.fromLTRB(12, 16, 0, 16)
                : const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  _emoji.value,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                _isTapped.value
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.54,
                            transform: Matrix4.translationValues(0, 10, 0),
                            child: TextFormField(
                              controller: _listNameController,
                              autofocus: true,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Create a List',
                              ),
                              validator: (value) {
                                if (value == null) {
                                  // _errorText.value = '';
                                  return null;
                                }
                                if (value.toLowerCase() == 'wishlist' &&
                                    value.toLowerCase() != 'cart') {
                                  _errorText.value =
                                      'Cannot keep this as your list\'s name';
                                  return null;
                                }
                              },
                            ),
                          ),
                          Container(
                            transform: Matrix4.translationValues(0, -2, 0),
                            child: Row(
                              children: [
                                IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color:
                                        context.everythngThemeData.errorColor,
                                  ),
                                ),
                                IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.done_rounded,
                                    color:
                                        context.everythngThemeData.successColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Text(
                        'Create a new list',
                        style: context.everythngTextTheme.bodyTextMedium,
                      ),
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            _errorText.value,
            style: context.everythngTextTheme.captionMedium?.copyWith(
              color: context.everythngThemeData.errorColor,
            ),
          ),
        ],

      ),
    );
  }
}
