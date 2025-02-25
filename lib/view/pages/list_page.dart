import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sample/domain/value/sort_types.dart';
import 'package:flutter_sample/view/compounds/git_repo_list_view.dart';
import 'package:flutter_sample/view/compounds/query_field.dart';
import 'package:flutter_sample/view/compounds/sort_type_selector.dart';

class ListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textEditingController = useTextEditingController();
    final textNotifier = useState<String>('');
    final sortTypesNotifer = useState<SortTypes>(SortTypes.match);
    useEffect(
      () {
        void listener() {
          textNotifier.value = textEditingController.text;
        }

        textEditingController.addListener(listener);
        return () => textEditingController.removeListener(listener);
      },
      [textEditingController],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '一覧',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        foregroundColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          spacing: 8,
          children: [
            const SizedBox(
              height: 64,
              child: Row(
                spacing: 8,
                children: [
                  Expanded(
                    child: QueryField(),
                  ),
                  AspectRatio(
                    aspectRatio: 1,
                    child: SortTypeSelector(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GitRepoListView(
                textNotifer: textNotifier,
                sortTypesController: sortTypesNotifer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
