import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/domain/value/sort_type.dart';
import 'package:flutter_sample/view/extensions/sort_types_extension.dart';
import 'package:flutter_sample/view/parts/list/popup_menu_button_child.dart';
import 'package:flutter_sample/view/parts/list/popup_menu_button_item.dart';
import 'package:flutter_sample/view/provider/provider.dart';

class SortTypeSelector extends ConsumerWidget {
  const SortTypeSelector({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sortType = ref.read(sortTypeProvider);
    return PopupMenuButton<SortType>(
      onSelected: (type) {
        ref.read(sortTypeProvider.notifier).state = type;
      },
      itemBuilder: (context) {
        //Popup時
        return SortType.values.map((item) {
          return PopupMenuItem<SortType>(
            value: item,
            child: PopupMenuItemChild(
              text: item.text,
              icon: item.icon,
            ),
          );
        }).toList();
      },
      //通常時
      child: PopupMenuButtonChild(icon: sortType.icon),
    );
  }
}
