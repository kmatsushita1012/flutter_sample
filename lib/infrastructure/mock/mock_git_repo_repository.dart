import 'package:flutter_sample/domain/entity/git_repo/git_repo.dart';
import 'package:flutter_sample/application/repository/git_repo_repository.dart';
import 'package:flutter_sample/domain/value/sort_types.dart';

class MockGitRepoRepository extends GitRepoRepository {
  @override
  Future<List<GitRepo>> get(String query, SortTypes type) async {
    return <GitRepo>[
      const GitRepo(
        name: 'name',
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
