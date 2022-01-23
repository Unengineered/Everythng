import 'package:everythng/application/list/list_cubit.dart';
import 'package:everythng/core/extensions/extension_context.dart';
import 'package:everythng/presentation/marketplace/saved/widgets/create_list_element.dart';
import 'package:everythng/presentation/marketplace/saved/widgets/list_element.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../injection.dart';

class SavedPage extends HookWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ListCubit>()..initialise(),
      child: Scaffold(
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
          child: BlocBuilder<ListCubit, ListState>(builder: (context, state) {
            return state.map(initial: (_) {
              return const CircularProgressIndicator();
            }, loading: (_) {
              return const CircularProgressIndicator();
            }, loaded: (state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your saved items appear here.Create multiple lists to save outfits for multiple outings.',
                    style:
                        context.everythngTextTheme.bodyTextSemiBold?.copyWith(
                      color:
                          context.everythngThemeData.textAndIconography.medium,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ListElement.wishlist(state.itemLists.wishList),
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
                  CreateListElement(),
                  const SizedBox(
                    height: 12,
                  ),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final userList = state.itemLists.lists[index];
                        return ListElement(
                            emoji: userList.emoji,
                            listName:userList.listName,
                            productList: userList.list);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 12,
                        );
                      },
                      itemCount: state.itemLists.lists.length)
                ],
              );
            }, error: (_) {
              return const Text('error');
            });
          }),
        ),
      ),
    );
  }
}
