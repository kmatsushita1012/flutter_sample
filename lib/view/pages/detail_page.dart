import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sample/view/parts/detail/count_card.dart';
import 'package:flutter_sample/view/parts/detail/custom_grid_view.dart';
import 'package:flutter_sample/view/parts/detail/fade_icon.dart';
import 'package:flutter_sample/view/parts/detail/fade_title.dart';
import 'package:flutter_sample/view/parts/detail/text_tile.dart';
import 'package:flutter_sample/view/parts/shared/custom_app_bar.dart';
import 'package:flutter_sample/view/provider/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailPage extends HookConsumerWidget {
  //アニメーション

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // アニメーションコントローラを初期化
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 1000),
    );
    // アニメーションを開始
    useEffect(
      () {
        animationController.forward();
        return null;
      },
      [animationController],
    );

    final item = ref.watch(selectedGitRepoProvider);
    if (item == null) {
      return const Center(
        child: Text('No Repository Found.'),
      );
    }

    return Scaffold(
      appBar: const CustomAppBar(title: '詳細'),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                spacing: 16,
                children: [
                  FadeTitle(
                    animation: animationController,
                    title: item.name,
                  ),
                  FadeIcon(
                    animation: animationController,
                    userIconPath: item.userIconPath,
                  ),
                ],
              ),
              Column(
                children: [
                  //言語
                  TextTile(
                    title: '言語',
                    iconData: Icons.language,
                    value: item.language ?? '未入力', //言語が未定義の時
                    animation: animationController,
                  ),
                  CustomGridView(
                    children: [
                      //Star数
                      CountCard(
                        title: 'Stars',
                        iconData: Icons.star,
                        value: item.stars,
                        animation: animationController,
                      ),
                      //Watcher数
                      CountCard(
                        title: 'Watchers',
                        iconData: Icons.visibility,
                        value: item.watchers,
                        animation: animationController,
                      ),
                      //Fork数
                      CountCard(
                        title: 'Fork',
                        iconData: Icons.fork_right,
                        value: item.forks,
                        animation: animationController,
                      ),
                      //Issue数
                      CountCard(
                        title: 'Issue',
                        iconData: Icons.adjust,
                        value: item.issues,
                        animation: animationController,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
