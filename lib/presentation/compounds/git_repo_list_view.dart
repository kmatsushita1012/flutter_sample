import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/domain/entity/git_repo/git_repo.dart';
import 'package:flutter_sample/domain/value/sort_types.dart';
import 'package:flutter_sample/presentation/pages/detail_page.dart';
import 'package:flutter_sample/presentation/parts/list/custom_list_view.dart';
import 'package:flutter_sample/presentation/provider/provider.dart';

class GitRepoListView extends ConsumerWidget {
  const GitRepoListView({
    required this.textNotifer,
    required this.sortTypesController,
    super.key,
  });

  final ValueNotifier<String> textNotifer;
  final ValueNotifier<SortTypes> sortTypesController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(
          gitReposProvider(
            query: ref.watch(queryFieldNotifierProvider),
            type: ref.watch(sortTypeProvider),
          ),
        )
        .when(
          data: (items) => CustomListView<GitRepo>(
            items: items,
            pass: (item) => item.name,
            onSelect: (index) {
              ref.read(selectedGitRepoProvider.notifier).set(items[index]);
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const DetailPage(),
                ),
              );
            },
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('$error')),
          skipLoadingOnRefresh: false,
        );
  }
}
