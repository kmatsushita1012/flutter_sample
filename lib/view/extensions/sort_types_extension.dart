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
        return 'Stars';
      case SortTypes.forks:
        return 'Forks';
      case SortTypes.issues:
        return 'Issues';
      case SortTypes.updated:
        return 'Update';
      case SortTypes.match:
        return 'Recommend';
    }
  }
}
