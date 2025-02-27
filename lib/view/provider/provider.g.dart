// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gitReposHash() => r'875444857862c43baa9f300248c74cec5d0a1792';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [gitRepos].
@ProviderFor(gitRepos)
const gitReposProvider = GitReposFamily();

/// See also [gitRepos].
class GitReposFamily extends Family<AsyncValue<List<GitRepo>>> {
  /// See also [gitRepos].
  const GitReposFamily();

  /// See also [gitRepos].
  GitReposProvider call({
    required String query,
    required SortType type,
  }) {
    return GitReposProvider(
      query: query,
      type: type,
    );
  }

  @override
  GitReposProvider getProviderOverride(
    covariant GitReposProvider provider,
  ) {
    return call(
      query: provider.query,
      type: provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'gitReposProvider';
}

/// See also [gitRepos].
class GitReposProvider extends AutoDisposeFutureProvider<List<GitRepo>> {
  /// See also [gitRepos].
  GitReposProvider({
    required String query,
    required SortType type,
  }) : this._internal(
          (ref) => gitRepos(
            ref as GitReposRef,
            query: query,
            type: type,
          ),
          from: gitReposProvider,
          name: r'gitReposProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gitReposHash,
          dependencies: GitReposFamily._dependencies,
          allTransitiveDependencies: GitReposFamily._allTransitiveDependencies,
          query: query,
          type: type,
        );

  GitReposProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.type,
  }) : super.internal();

  final String query;
  final SortType type;

  @override
  Override overrideWith(
    FutureOr<List<GitRepo>> Function(GitReposRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GitReposProvider._internal(
        (ref) => create(ref as GitReposRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<GitRepo>> createElement() {
    return _GitReposProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GitReposProvider &&
        other.query == query &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GitReposRef on AutoDisposeFutureProviderRef<List<GitRepo>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `type` of this provider.
  SortType get type;
}

class _GitReposProviderElement
    extends AutoDisposeFutureProviderElement<List<GitRepo>> with GitReposRef {
  _GitReposProviderElement(super.provider);

  @override
  String get query => (origin as GitReposProvider).query;
  @override
  SortType get type => (origin as GitReposProvider).type;
}

String _$selectedGitRepoHash() => r'c7413bc6c57842e5941dc82da105ecb60f60387f';

/// See also [SelectedGitRepo].
@ProviderFor(SelectedGitRepo)
final selectedGitRepoProvider =
    AutoDisposeNotifierProvider<SelectedGitRepo, GitRepo?>.internal(
  SelectedGitRepo.new,
  name: r'selectedGitRepoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedGitRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedGitRepo = AutoDisposeNotifier<GitRepo?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
