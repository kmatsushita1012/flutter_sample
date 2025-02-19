import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/application/usecase/git_repo_usecase.dart';
import 'package:flutter_sample/domain/entity/git_repo/git_repo.dart';
import 'package:flutter_sample/presentation/compounds/query_field.dart';
import 'package:flutter_sample/presentation/compounds/sort_type_selector.dart';
import 'package:flutter_sample/presentation/parts/custom_list_view.dart';

abstract class GitRepoNotifier
    extends StateNotifier<AsyncValue<List<GitRepo>>> {
  GitRepoNotifier() : super(const AsyncValue.loading());

  Future<void> fetch();
}

class GitRepoNotifierImpl extends GitRepoNotifier {
  GitRepoNotifierImpl(this.ref) : super() {
    fetch();
  }
  final Ref ref;
  @override
  Future<void> fetch() async {
    state = const AsyncValue.loading();
    try {
      final query = ref.read(queryControllerProvider).text;
      final type = ref.read(sortTypeProvider);
      final repos =
          await ref.read(gitRepoUsecaseProvider).getGitRepos(query, type);
      state = AsyncValue.data(repos);
    } on Exception catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}

final gitReposProvider =
    StateNotifierProvider<GitRepoNotifier, AsyncValue<List<GitRepo>>>(
  (ref) => GitRepoNotifierImpl(ref),
);

class GitRepoListView extends ConsumerWidget {
  void onSelect(BuildContext context, GitRepo item) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => DetailPage()),
    // );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(gitReposProvider).when(
          data: (items) => CustomListView<GitRepo>(
            items: items,
            pass: (item) => item.name,
            onSelect: (index) => onSelect(
              context,
              items[index],
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('$error')),
        );
  }
}
