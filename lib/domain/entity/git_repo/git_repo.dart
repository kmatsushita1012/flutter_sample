import 'package:freezed_annotation/freezed_annotation.dart';

part 'git_repo.freezed.dart';
part 'git_repo.g.dart';

@freezed
class GitRepo with _$GitRepo {
  const factory GitRepo({
    required String name,
    required String userIconPath,
    required String? language,
    required int stars,
    required int watchers,
    required int forks,
    required int issues,
  }) = _GitRepo;

  factory GitRepo.fromJson(Map<String, dynamic> json) =>
      _$GitRepoFromJson(json);
}
