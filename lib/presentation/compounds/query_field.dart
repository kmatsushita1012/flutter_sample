import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/domain/repository/git_repo_repository.dart';

/// 投稿コメント入力用のテキストコントローラープロバイダー
final queryControllerProvider =
    StateProvider.autoDispose<TextEditingController>(
  (_) => TextEditingController(),
);

class QueryField extends ConsumerWidget {
  const QueryField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      controller: ref.watch(queryControllerProvider),
      onSubmitted: (_) => ref.invalidate(gitRepoRepositoryProvider),
      decoration: const InputDecoration(
        labelText: 'キーワード',
        border: OutlineInputBorder(),
      ),
    );
  }
}
