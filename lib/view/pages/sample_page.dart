import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/shared/custom_widgets.dart';

//送信ボタンなし用Provider
final textEdittingNotifierProvider1 =
    StateNotifierProvider<TextEditingNotifier, String>(
  (ref) => TextEditingNotifier(),
);
//送信ボタンあり用Provider
final textEdittingNotifierProvider2 =
    StateNotifierProvider<TextEditingNotifier, String>(
  (ref) => TextEditingNotifier(),
);

class SamplePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier1 = ref.watch(textEdittingNotifierProvider1.notifier);
    final notifier2 = ref.watch(textEdittingNotifierProvider2.notifier);
    return Scaffold(
      body: Column(
        children: [
          //送信ボタンなし
          NotifierTextField(
            notifier: notifier1,
          ),
          Text('You typed: ${ref.watch(textEdittingNotifierProvider1)}'),
          //送信ボタンあり
          NotifierTextField(
            notifier: notifier2,
            updateType: TextEdittingUpdateType.never,
          ),
          NotifierSubmitButton(
            notifier: notifier2,
            child: const Text('決定'),
          ),
          Text('You typed: ${ref.watch(textEdittingNotifierProvider2)}'),
        ],
      ),
    );
  }
}
