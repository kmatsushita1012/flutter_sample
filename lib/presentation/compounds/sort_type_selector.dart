import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/domain/value/sort_types.dart';
import 'package:flutter_sample/presentation/extensions/sort_types_extension.dart';
import 'package:flutter_sample/presentation/provider/provider.dart';

class SortTypeSelector extends ConsumerWidget {
  const SortTypeSelector({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    return PopupMenuButton<SortTypes>(
      onSelected: (type) {
        ref.read(sortTypeProvider.notifier).state = type;
      },
      itemBuilder: (context) {
        //Popup時
        return SortTypes.values.map((item) {
          return PopupMenuItem<SortTypes>(
            value: item,
            child: Row(
              children: [
                Icon(item.icon()),
                const SizedBox(width: 8),
                Text(item.toText(), style: const TextStyle(fontSize: 16)),
              ],
            ),
          );
        }).toList();
      },
      //通常時
      child: Container(
        decoration: BoxDecoration(
          color: colorScheme.secondaryContainer,
          border: Border.all(color: colorScheme.onSurface),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(ref.read(sortTypeProvider).icon(), size: 32),
      ),
    );
  }
}
