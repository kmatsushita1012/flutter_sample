import 'package:flutter_sample/domain/entity/git_repo/git_repo.dart';
import 'package:flutter_sample/domain/value/sort_types.dart';
import 'package:riverpod/riverpod.dart';

final gitRepoRepositoryProvider =
    Provider<GitRepoRepository>((_) => throw UnimplementedError());

abstract class GitRepoRepository {
  Future<List<GitRepo>> get(String query, SortTypes type);
}
