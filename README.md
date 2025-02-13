## はじめに

就活中に某企業の Flutter 技術テストを行ったので、そこで得た経験から自分なりのベストプラクティスをまとめていきたいと思います。著者のレベルとしては大学 3 回生で Flutter の個人開発は 2 件程度、実務経験は無しなので悪しからず。

## タスク
- プロジェクトの作成
- コード分析
- UI/Unit テスト
- ビルドとテスターへの自動配布
- パイプライン作成
- 多言語対応
- UI アーキテクチャ
※今回は雛形を作成することをメインとするので具体的な実装は省いていきます

## プロジェクトの作成

今回は`sample`ディレクトリに`flutter_sample`というプロジェクトを作成する。ちなみに Flutter のプロジェクト名はスネークケース(単語は全て小文字でアンダースコアで繋ぐ)なので注意。これは後に作成するの Dart ファイルでも同じ。

1. 以下のコマンドを実行

   ```shell-session
   # カレントディレクトリの確認
   pwd
   # 出力は.../Sample

   # プロジェクトを作成
   flutter create flutter_sample

   # プロジェクトのルートディレクトリに移動
   cd flutter_sample

   # gitのローカルリポジトリを初期化
   git init

   # 全てのファイルをステージに追加
   git add .
   ```

1. GitHub のコンソールでリモートリポジトリを新規作成
1. URL をコピー
1. 以下のコマンドを実行

   ```shell-session
   # リモートをoriginとして登録
   git remote add origin YOUR_URL

   # リモートにプッシュ
   git push origin master
   ```

   - GitHub のコンソールを確認するとプロジェクトの反映が確認できる
   - 反映されてない場合はリモートのデフォルトブランチが`main`になっているのに対しローカルのデフォルトブランチが`master`になっている可能性がある
   - Settings &rarr; General &rarr; Default branch  で`master`に変更すればいい

## コード分析

リントと呼ばれるエディタ上で出力されるエラーや警告を分析するものである。デフォルトのリントではチェックが緩い。保守性や安全性を上げるために今回は[yumemi_lints](https://pub.dev/packages/yumemi_lints)を用いる。(これで受けた企業がバレる)

1. 以下のコマンドを実行
   ```shell-session
   dart pub add dev:yumemi_lints
   dart run yumemi_lints update
   ```
1. `analysis_options.yaml`を以下の通り書き換え
   ```yaml:analysis_options.yaml
   include: package:yumemi_lints/dart/2.17/recommended.yaml
   # 以下は独自のリントを定めたいときに使う
   linter:
       rules:
   ```

## UI/Unit テスト

警告やエラーではないが挙動が想定と異なるということはよくある。それらの確認をコード化し自動でチェックするのが UI/Unit テストである。

1. `test`フォルダに`unit_test.dart`と`integration_test.dart`を追加
   ```
   flutter_sample
   ├── test
   │   ├── widget_test.dart
   │   ├── unit_test.dart
   │   └── integration_test.dart
   ```
   - `widget_test.dart`は UI(ウィジェット)のテスト
   - `unit_test.dart`は UI 以外のテスト
   - `integration_test.dart`はアプリ全体のテスト
2. ファイルの中身を書き換え

   ```dart

   ```

## ビルドとテスターへの自動配布
これで保守性や安全性に優れ、正常に動くアプリができた(と仮定する)。
次にアプリのビルドを行い、テスターに配布するための準備を行う。
