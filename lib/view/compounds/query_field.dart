import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/view/provider/provider.dart';
import 'package:flutter_sample/shared/custom_widgets.dart';

/// 投稿コメント入力用のテキストコントローラープロバイダー

class QueryField extends ConsumerWidget {
  const QueryField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NotifierTextField(
      notifier: ref.watch(queryFieldNotifierProvider.notifier),
      decoration: const InputDecoration(
        labelText: 'キーワード',
        border: OutlineInputBorder(),
      ),
    );
  }
}
