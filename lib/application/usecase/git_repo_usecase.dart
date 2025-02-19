import 'package:flutter_sample/domain/entity/git_repo/git_repo.dart';
import 'package:flutter_sample/domain/repository/git_repo_repository.dart';
import 'package:flutter_sample/domain/value/sort_types.dart';
import 'package:riverpod/riverpod.dart';

final gitRepoUsecaseProvider = Provider<GitRepoUsecase>(GitRepoUsecase.new);

class GitRepoUsecase {
  GitRepoUsecase(this._ref);
  final Ref _ref;
  GitRepoRepository get _gitRepoRepository =>
      _ref.watch(gitRepoRepositoryProvider);

  Future<List<GitRepo>> getGitRepos(String query, SortTypes type) async {
    return _gitRepoRepository.get(query, type);
  }
}
