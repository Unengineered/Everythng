import 'dart:math' hide log;
import 'package:emojis/emoji.dart';
import 'package:everythng/application/list/list_cubit.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/presentation/marketplace/saved/widgets/show_emoji_keyboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class CreateListElement extends HookWidget {
  CreateListElement({Key? key}) : super(key: key);
  final TextEditingController _listNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _showKeyboard = useState(false);
    final _autofocus = useState(true);
    final _errorText = useState('');

    final _emoji = useState(Emoji.byKeyword('plus').first.toString());
    final _formKey = GlobalKey<FormState>();
    final FocusNode _focusNode = FocusNode();
    return Column(
      children: [
        Container(
          height: 53,
          padding: _showKeyboard.value
              ? const EdgeInsets.fromLTRB(12, 16, 0, 16)
              : const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  showEmojiKeyboard(context, _emoji, _focusNode, _autofocus);
                },
                child: Text(
                  _emoji.value,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              _showKeyboard.value
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.54,
                          transform: Matrix4.translationValues(0, 10, 0),
                          child: Form(
                            key: _formKey,
                            child: TextFormField(
                              focusNode: _focusNode,
                              controller: _listNameController,
                              autofocus: _autofocus.value,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Create a List',
                              ),
                              validator: (value) {
                                if (value == null) {
                                  // _errorText.value = '';
                                  return '';
                                }
                                if (value.trim().toLowerCase() == 'wishlist' ||
                                    value.trim().toLowerCase() == 'cart') {
                                  _errorText.value =
                                      'Cannot keep this as your list\'s name';
                                  return '';
                                }
                              },
                            ),
                          ),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0, -2, 0),
                          child: Row(
                            children: [
                              IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {
                                  _emoji.value =
                                      Emoji.byKeyword('plus').first.toString();
                                  _errorText.value = '';
                                  _listNameController.text = '';
                                  _showKeyboard.value = false;
                                },
                                icon: Icon(
                                  Icons.close_rounded,
                                  color: context.everythngThemeData.errorColor,
                                ),
                              ),
                              IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {
                                  context.read<ListCubit>().addList(
                                      name: _listNameController.text,
                                      emoji: _emoji.value);
                                  if (_formKey.currentState != null &&
                                      _formKey.currentState!.validate()) {
                                    _errorText.value = '';
                                  }
                                },
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
                  : GestureDetector(
                      onTap: () async {
                        List<String> _emojiList = Emoji.all()
                            .where((element) =>
                                (element.toString().length == 2 ||
                                    element.toString().length == 1))
                            .map((e) => e.toString().trim())
                            .toList();

                        _emoji.value =
                            _emojiList[Random().nextInt(_emojiList.length)]
                                .characters
                                .first;
                        _showKeyboard.value = true;

                        // WidgetsBinding.instance!.addPostFrameCallback((_) {
                        //   log(_focusNode.hasPrimaryFocus.toString());
                        //   _focusNode.requestFocus();
                        //   _focusNode.unfocus();
                        //   _focusNode.requestFocus();
                        // });
                      },
                      child: Text(
                        'Create a new list',
                        style: context.everythngTextTheme.bodyTextMedium,
                      ),
                    ),
            ],
          ),
        ),
        _errorText.value.isNotEmpty
            ? Text(
                _errorText.value,
                style: context.everythngTextTheme.captionMedium?.copyWith(
                  color: context.everythngThemeData.errorColor,
                ),
              )
            : Container(),
      ],
    );
  }
}
