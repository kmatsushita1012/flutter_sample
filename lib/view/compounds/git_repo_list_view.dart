import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/view/navigation/page_navigation.dart';
import 'package:flutter_sample/view/pages/detail_page.dart';
import 'package:flutter_sample/view/parts/list/custom_list_tile.dart';
import 'package:flutter_sample/view/provider/provider.dart';

class GitRepoListView extends ConsumerWidget {
  const GitRepoListView({
    super.key,
  });

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
          data: (items) => ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return CustomListTile(
                title: item.name,
                onTap: () {
                  ref.read(selectedGitRepoProvider.notifier).set(item);
                  pushPage<void>(context, DetailPage());
                },
              );
            },
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('$error')),
          skipLoadingOnRefresh: false,
        );
  }
}
