//ソート方法
enum SortTypes {
  match,
  updated,
  stars,
  forks,
  issues;

  //クエリ用の変換
  String? toQueryString() {
    if (this == SortTypes.match) {
      return null;
    } else if (this == SortTypes.issues) {
      return 'help-wanted-issues';
    } else {
      return name;
    }
  }
}
