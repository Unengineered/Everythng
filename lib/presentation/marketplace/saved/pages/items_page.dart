
import 'package:everythng/presentation/marketplace/saved/widgets/item_page_app_bar.dart';
import 'package:everythng/presentation/marketplace/saved/widgets/items_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemsPage extends HookWidget {
  final String emoji;
  final String listName;

  const ItemsPage({
    Key? key,
    required this.emoji,
    required this.listName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isEditing = useState(false);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 20, 0),
                child: ItemPageAppBar(isEditing: _isEditing, emoji: emoji, listName : listName),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                child: ItemsGrid(isEditing: _isEditing),
              ),
              const SizedBox(
                height: 48,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




