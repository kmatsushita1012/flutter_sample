import 'package:flutter/material.dart';
import 'package:flutter_sample/domain/value/sort_types.dart';

extension SortTypesExtension on SortTypes {
  IconData icon() {
    switch (this) {
      case SortTypes.stars:
        return Icons.star;
      case SortTypes.forks:
        return Icons.fork_right;
      case SortTypes.issues:
        return Icons.adjust;
      case SortTypes.updated:
        return Icons.update;
      case SortTypes.match:
        return Icons.thumb_up;
    }
  }

  //UI用の変換
  String toText() {
    switch (this) {
      case SortTypes.stars:
        return 'スター数';
      case SortTypes.forks:
        return 'フォーク数';
      case SortTypes.issues:
        return 'イシュー数';
      case SortTypes.updated:
        return '更新日順';
      case SortTypes.match:
        return 'おすすめ順';
    }
  }
}
