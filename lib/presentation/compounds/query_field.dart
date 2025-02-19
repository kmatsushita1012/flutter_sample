import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/presentation/compounds/git_repo_list_view.dart';

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
      onSubmitted: (_) => ref.invalidate(gitReposProvider),
      decoration: const InputDecoration(
        labelText: 'キーワード',
        border: OutlineInputBorder(),
      ),
    );
  }
}
