import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sample/view/compounds/git_repo_list_view.dart';
import 'package:flutter_sample/view/compounds/query_field.dart';
import 'package:flutter_sample/view/compounds/sort_type_selector.dart';
import 'package:flutter_sample/view/parts/shared/custom_app_bar.dart';

class ListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'リスト'),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          spacing: 8,
          children: [
            SizedBox(
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
              child: GitRepoListView(),
            ),
          ],
        ),
      ),
    );
  }
}
