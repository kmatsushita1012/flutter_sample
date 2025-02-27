import 'package:flutter_sample/domain/entity/git_repo/git_repo.dart';
import 'package:flutter_sample/domain/value/sort_type.dart';
import 'package:flutter_sample/logic/interface/git_repo_repository.dart';

class MockGitRepoRepository extends GitRepoRepository {
  int count = 0;
  @override
  Future<List<GitRepo>> get(String query, SortType type) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    count++;
    if (count.isEven) {
      return <GitRepo>[
        const GitRepo(
          name: 'Name2',
          userIconPath: 'userIconPath',
          language: 'language',
          stars: 0,
          watchers: 0,
          forks: 0,
          issues: 0,
        ),
      ];
    } else {
      return <GitRepo>[
        const GitRepo(
          name: 'Name1',
          userIconPath: 'userIconPath',
          language: 'language',
          stars: 0,
          watchers: 0,
          forks: 0,
          issues: 0,
        ),
      ];
    }
  }
}
