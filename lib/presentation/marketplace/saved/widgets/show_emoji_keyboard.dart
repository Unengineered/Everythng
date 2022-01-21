import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:everythng/presentation/marketplace/saved/pages/saved_page.dart';
import 'package:everythng/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

Future<dynamic> showEmojiKeyboard(BuildContext context, ValueNotifier<String> _emoji, ValueNotifier<bool> _isTapped ) {
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: FloatingActionButton.small(
                  elevation: 0,
                  onPressed: () {
                    _isTapped.value = true;
                    context.router.popUntilRouteWithName(SavedPageRoute.name);
                  },
                  child: const Icon(Icons.done_rounded),
                ),
              ),
              Expanded(
                flex: 8,
                child: EmojiPicker(
                  config: const Config(
                    columns: 7,
                    verticalSpacing: 0,
                    horizontalSpacing: 0,
                    initCategory: Category.SMILEYS,
                    bgColor: Color(0xFFF2F2F2),
                    indicatorColor: Colors.blue,
                    iconColor: Colors.grey,
                    iconColorSelected: Colors.blue,
                    progressIndicatorColor: Colors.blue,
                    showRecentsTab: true,
                    recentsLimit: 28,
                    noRecentsText: "No Recents",
                    noRecentsStyle:
                    TextStyle(fontSize: 20, color: Colors.black26),
                    tabIndicatorAnimDuration: kTabScrollDuration,
                    categoryIcons: CategoryIcons(),
                    buttonMode: ButtonMode.CUPERTINO,
                  ),
                  onEmojiSelected: (category, emoji) {
                    _emoji.value = emoji.emoji.toString();
                  },
                ),
              ),
            ],
          ),
        );
      });
}