import 'package:flutter_sample/application/usecase/git_repo_usecase.dart';
import 'package:flutter_sample/domain/entity/git_repo/git_repo.dart';
import 'package:flutter_sample/domain/value/sort_types.dart';
import 'package:flutter_sample/shared/custom_widgets.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
Future<List<GitRepo>> gitRepos(
  Ref ref, {
  required String query,
  required SortTypes type,
}) {
  return ref.watch(gitRepoUsecaseProvider).getGitRepos(query, type);
}

// Application層なし
// import 'package:flutter_sample/application/repository/git_repo_repository.dart';
// @riverpod
// Future<List<GitRepo>> gitReposProvider(GitReposProviderRef ref,
//     {required String query, required SortTypes type}) {
//   return ref.watch(gitRepoRepositoryProvider).get(query, type);
// }

@riverpod
class SelectedGitRepo extends _$SelectedGitRepo {
  @override
  GitRepo? build() {
    ref.keepAlive();
    return null;
  }

  void set(GitRepo item) {
    state = item;
  }

  GitRepo? get() {
    return state;
  }
}

final queryFieldNotifierProvider =
    StateNotifierProvider<TextEditingNotifier, String>(
  (ref) => TextEditingNotifier(''),
);
final sortTypeProvider = StateProvider<SortTypes>(
  (ref) => SortTypes.match,
);
