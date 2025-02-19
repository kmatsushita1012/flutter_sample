import 'package:flutter/material.dart';
import 'package:flutter_sample/presentation/parts/custom_list_tile.dart';

class CustomListView<T> extends StatelessWidget {
  const CustomListView({
    required this.items,
    required this.pass,
    required this.onSelect,
  });
  final List<T> items;
  final String Function(T) pass;
  final void Function(int) onSelect;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomListTile(
          title: pass(items[index]),
          onTap: () => onSelect(index),
        );
      },
    );
  }
}
