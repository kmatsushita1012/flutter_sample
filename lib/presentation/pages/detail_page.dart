import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/presentation/parts/detail/count_card.dart';
import 'package:flutter_sample/presentation/parts/detail/custom_grid_view.dart';
import 'package:flutter_sample/presentation/parts/detail/fade_icon.dart';
import 'package:flutter_sample/presentation/parts/detail/fade_title.dart';
import 'package:flutter_sample/presentation/parts/detail/text_tile.dart';
import 'package:flutter_sample/presentation/provider/provider.dart';

class DetailPage extends ConsumerStatefulWidget {
  const DetailPage({super.key});
  @override
  DetailPageState createState() => DetailPageState();
}

class DetailPageState extends ConsumerState<DetailPage>
    with TickerProviderStateMixin {
  //アニメーション
  double opacityLevel = 1;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();
    //アニメーション実行
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final item = ref.watch(selectedGitRepoProvider.notifier).get();
    if (item == null) {
      return const Center(
        child: Text('No Repository Found.'),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '詳細',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        foregroundColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.primary,
      ),
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
                    animation: _animation,
                    title: item.name,
                  ),
                  FadeIcon(
                    animation: _animation,
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
                    animation: _animation,
                  ),
                  CustomGridView(
                    children: [
                      //Star数
                      CountCard(
                        title: 'Stars',
                        iconData: Icons.star,
                        value: item.stars,
                        animation: _animation,
                      ),
                      //Watcher数
                      CountCard(
                        title: 'Watchers',
                        iconData: Icons.visibility,
                        value: item.watchers,
                        animation: _animation,
                      ),
                      //Fork数
                      CountCard(
                        title: 'Fork',
                        iconData: Icons.fork_right,
                        value: item.forks,
                        animation: _animation,
                      ),
                      //Issue数
                      CountCard(
                        title: 'Issue',
                        iconData: Icons.adjust,
                        value: item.issues,
                        animation: _animation,
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
