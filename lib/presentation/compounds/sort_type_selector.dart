import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/domain/value/sort_types.dart';
import 'package:flutter_sample/presentation/compounds/git_repo_list_view.dart';
import 'package:flutter_sample/presentation/extensions/sort_types_extension.dart';

class SortTypeNotifier extends StateNotifier<SortTypes> {
  SortTypeNotifier() : super(SortTypes.match); // 初期値
  void setSortType(SortTypes newValue) {
    state = newValue;
  }
}

final sortTypeProvider = StateNotifierProvider<SortTypeNotifier, SortTypes>(
  (ref) => SortTypeNotifier(),
);

class SortTypeSelector extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sortType = ref.watch(sortTypeProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return PopupMenuButton<SortTypes>(
      onSelected: (type) {
        ref.read(sortTypeProvider.notifier).setSortType(type);
        ref.invalidate(gitReposProvider);
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
                Text(item.toString(), style: const TextStyle(fontSize: 16)),
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
        child: Icon(sortType.icon(), size: 32),
      ),
    );
  }
}
