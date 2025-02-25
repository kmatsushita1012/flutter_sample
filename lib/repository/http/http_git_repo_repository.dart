import 'dart:convert';

import 'package:flutter_sample/domain/entity/git_repo/git_repo.dart';
import 'package:flutter_sample/domain/value/sort_types.dart';
import 'package:flutter_sample/logic/interface/git_repo_repository.dart';
import 'package:http/http.dart' as http;

class HttpGitRepoRepository implements GitRepoRepository {
  HttpGitRepoRepository({this.baseUrl = 'https://api.github.com'});
  final String baseUrl;

  @override
  Future<List<GitRepo>> get(String query, SortTypes type) async {
    final response = await http.get(
      Uri.parse(
        '$baseUrl/search/repositories?q=$query&sort=${type.toQueryString()}',
      ),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      final items = data['items'] as List<dynamic>;
      return items
          .map(
            (item) =>
                GitRepoHttpExtension.fromApiJson(item as Map<String, dynamic>),
          )
          .toList();
    } else {
      throw Exception('Failed to load repositories');
    }
  }
}

extension GitRepoHttpExtension on GitRepo {
  static GitRepo fromApiJson(Map<String, dynamic> json) {
    return GitRepo(
      name: json['name'] as String,
      userIconPath:
          (json['owner'] as Map<String, dynamic>)['avatar_url'] as String,
      language: json['language'] as String?,
      stars: json['stargazers_count'] as int,
      watchers: json['watchers_count'] as int,
      forks: json['forks_count'] as int,
      issues: json['open_issues_count'] as int,
    );
  }
}

extension SortTypesHttpExtension on SortTypes {
  //クエリ用の変換
  String? toQueryString() {
    if (this == SortTypes.match) {
      return null;
    } else if (this == SortTypes.issues) {
      return 'help-wanted-issues';
    } else {
      return name;
    }
  }
}
