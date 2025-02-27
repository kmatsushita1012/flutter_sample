import 'package:flutter/material.dart';
import 'package:flutter_sample/domain/value/sort_type.dart';

extension SortTypesExtension on SortType {
  IconData get icon {
    switch (this) {
      case SortType.stars:
        return Icons.star;
      case SortType.forks:
        return Icons.fork_right;
      case SortType.issues:
        return Icons.adjust;
      case SortType.updated:
        return Icons.update;
      case SortType.match:
        return Icons.thumb_up;
    }
  }

  //UI用の変換
  String get text {
    switch (this) {
      case SortType.stars:
        return 'Stars';
      case SortType.forks:
        return 'Forks';
      case SortType.issues:
        return 'Issues';
      case SortType.updated:
        return 'Update';
      case SortType.match:
        return 'Recommend';
    }
  }
}
