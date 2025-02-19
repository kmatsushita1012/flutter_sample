// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitRepo _$GitRepoFromJson(Map<String, dynamic> json) {
  return _GitRepo.fromJson(json);
}

/// @nodoc
mixin _$GitRepo {
  String get name => throw _privateConstructorUsedError;
  String get userIconPath => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  int get stars => throw _privateConstructorUsedError;
  int get watchers => throw _privateConstructorUsedError;
  int get forks => throw _privateConstructorUsedError;
  int get issues => throw _privateConstructorUsedError;

  /// Serializes this GitRepo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GitRepo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitRepoCopyWith<GitRepo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitRepoCopyWith<$Res> {
  factory $GitRepoCopyWith(GitRepo value, $Res Function(GitRepo) then) =
      _$GitRepoCopyWithImpl<$Res, GitRepo>;
  @useResult
  $Res call(
      {String name,
      String userIconPath,
      String? language,
      int stars,
      int watchers,
      int forks,
      int issues});
}

/// @nodoc
class _$GitRepoCopyWithImpl<$Res, $Val extends GitRepo>
    implements $GitRepoCopyWith<$Res> {
  _$GitRepoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitRepo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? userIconPath = null,
    Object? language = freezed,
    Object? stars = null,
    Object? watchers = null,
    Object? forks = null,
    Object? issues = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userIconPath: null == userIconPath
          ? _value.userIconPath
          : userIconPath // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      watchers: null == watchers
          ? _value.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      issues: null == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitRepoImplCopyWith<$Res> implements $GitRepoCopyWith<$Res> {
  factory _$$GitRepoImplCopyWith(
          _$GitRepoImpl value, $Res Function(_$GitRepoImpl) then) =
      __$$GitRepoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String userIconPath,
      String? language,
      int stars,
      int watchers,
      int forks,
      int issues});
}

/// @nodoc
class __$$GitRepoImplCopyWithImpl<$Res>
    extends _$GitRepoCopyWithImpl<$Res, _$GitRepoImpl>
    implements _$$GitRepoImplCopyWith<$Res> {
  __$$GitRepoImplCopyWithImpl(
      _$GitRepoImpl _value, $Res Function(_$GitRepoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitRepo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? userIconPath = null,
    Object? language = freezed,
    Object? stars = null,
    Object? watchers = null,
    Object? forks = null,
    Object? issues = null,
  }) {
    return _then(_$GitRepoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userIconPath: null == userIconPath
          ? _value.userIconPath
          : userIconPath // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      watchers: null == watchers
          ? _value.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      issues: null == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitRepoImpl implements _GitRepo {
  const _$GitRepoImpl(
      {required this.name,
      required this.userIconPath,
      required this.language,
      required this.stars,
      required this.watchers,
      required this.forks,
      required this.issues});

  factory _$GitRepoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitRepoImplFromJson(json);

  @override
  final String name;
  @override
  final String userIconPath;
  @override
  final String? language;
  @override
  final int stars;
  @override
  final int watchers;
  @override
  final int forks;
  @override
  final int issues;

  @override
  String toString() {
    return 'GitRepo(name: $name, userIconPath: $userIconPath, language: $language, stars: $stars, watchers: $watchers, forks: $forks, issues: $issues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitRepoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userIconPath, userIconPath) ||
                other.userIconPath == userIconPath) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.watchers, watchers) ||
                other.watchers == watchers) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.issues, issues) || other.issues == issues));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, userIconPath, language,
      stars, watchers, forks, issues);

  /// Create a copy of GitRepo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitRepoImplCopyWith<_$GitRepoImpl> get copyWith =>
      __$$GitRepoImplCopyWithImpl<_$GitRepoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitRepoImplToJson(
      this,
    );
  }
}

abstract class _GitRepo implements GitRepo {
  const factory _GitRepo(
      {required final String name,
      required final String userIconPath,
      required final String? language,
      required final int stars,
      required final int watchers,
      required final int forks,
      required final int issues}) = _$GitRepoImpl;

  factory _GitRepo.fromJson(Map<String, dynamic> json) = _$GitRepoImpl.fromJson;

  @override
  String get name;
  @override
  String get userIconPath;
  @override
  String? get language;
  @override
  int get stars;
  @override
  int get watchers;
  @override
  int get forks;
  @override
  int get issues;

  /// Create a copy of GitRepo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitRepoImplCopyWith<_$GitRepoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
