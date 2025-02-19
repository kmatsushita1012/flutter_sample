// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitRepoImpl _$$GitRepoImplFromJson(Map<String, dynamic> json) =>
    _$GitRepoImpl(
      name: json['name'] as String,
      userIconPath: json['userIconPath'] as String,
      language: json['language'] as String?,
      stars: (json['stars'] as num).toInt(),
      watchers: (json['watchers'] as num).toInt(),
      forks: (json['forks'] as num).toInt(),
      issues: (json['issues'] as num).toInt(),
    );

Map<String, dynamic> _$$GitRepoImplToJson(_$GitRepoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userIconPath': instance.userIconPath,
      'language': instance.language,
      'stars': instance.stars,
      'watchers': instance.watchers,
      'forks': instance.forks,
      'issues': instance.issues,
    };
