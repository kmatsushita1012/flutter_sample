import 'package:flutter/material.dart';
import 'package:flutter_sample/presentation/compounds/git_repo_list_view.dart';
import 'package:flutter_sample/presentation/compounds/query_field.dart';
import 'package:flutter_sample/presentation/compounds/sort_type_selector.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Page'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 64,
            child: QueryField(),
          ),
          SizedBox(
            height: 64,
            child: SortTypeSelector(),
          ),
          Expanded(
            child: GitRepoListView(),
          ),
        ],
      ),
    );
  }
}
