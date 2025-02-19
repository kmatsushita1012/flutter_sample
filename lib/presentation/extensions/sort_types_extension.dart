import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
  // String toText(BuildContext context) {
  //   switch (this) {
  //     case SortTypes.stars:
  //       return AppLocalizations.of(context)!.stars;
  //     case SortTypes.forks:
  //       return AppLocalizations.of(context)!.forks;
  //     case SortTypes.issues:
  //       return AppLocalizations.of(context)!.issues;
  //     case SortTypes.updated:
  //       return AppLocalizations.of(context)!.last_updated;
  //     case SortTypes.match:
  //       return AppLocalizations.of(context)!.best_match;
  //   }
  // }
}
