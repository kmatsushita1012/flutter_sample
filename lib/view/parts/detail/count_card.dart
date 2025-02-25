import 'package:countup/countup.dart';
import 'package:flutter/material.dart';

//詳細ページのグリッドのカード
class CountCard extends StatelessWidget {
  const CountCard({
    required this.title,
    required this.iconData,
    required this.value,
    required this.animation,
    super.key,
  });
  final String title;
  final IconData iconData;
  final int value;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          spacing: 8,
          children: [
            Expanded(
              child: Row(
                children: [
                  //左半分をアイコン,右半分を空白
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Center(
                          child: FadeTransition(
                            opacity: animation,
                            child: Icon(
                              iconData,
                              size: constraints.maxWidth * 0.8,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            //タイトル
            Align(
              alignment: Alignment.centerLeft,
              child: FadeTransition(
                opacity: animation,
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
            //値 カウントアップのアニメーション
            Align(
              alignment: Alignment.centerRight,
              child: Countup(
                begin: 0,
                end: value.toDouble(),
                duration: const Duration(seconds: 1),
                separator: ',',
                style: const TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
