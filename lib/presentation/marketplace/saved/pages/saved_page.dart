import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/presentation/marketplace/saved/widgets/create_list_element.dart';
import 'package:everythng/presentation/marketplace/saved/widgets/list_element.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SavedPage extends HookWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        elevation: 0,
        title: Text(
          'Saved',
          style: context.everythngTextTheme.headline2Bold,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 16, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your saved items appear here.Create multiple lists to save outfits for multiple outings.',
              style: context.everythngTextTheme.bodyTextSemiBold?.copyWith(
                color: context.everythngThemeData.textAndIconography.medium,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ListElement.wishlist(),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Your Lists',
              style: context.everythngTextTheme.headline4Bold,
            ),
            const SizedBox(
              height: 12,
            ),
            const CreateListElement(),
            const SizedBox(
              height: 12,
            ),
            const ListElement(
              emoji: '😍',
              listName: 'Date Night',
            ),
              const SizedBox(
              height: 12,
            ),
            const ListElement(
              emoji: '😚',
              listName: 'Club Night',
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}


