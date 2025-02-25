import 'package:flutter/material.dart';

//言語用のタイル
class TextTile extends StatelessWidget {
  const TextTile({
    required this.title,
    required this.iconData,
    required this.value,
    required this.animation,
    super.key,
  });
  final String title;
  final IconData iconData;
  final String value;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withAlpha(31),
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          //アイコン
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: FadeTransition(
                    opacity: animation,
                    child: Icon(
                      Icons.language,
                      size: constraints.maxWidth * 0.6,
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                //タイトル
                Align(
                  alignment: Alignment.centerLeft,
                  child: FadeTransition(
                    opacity: animation,
                    child: Text(
                      title,
                      softWrap: true,
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                //言語名
                Align(
                  alignment: Alignment.centerLeft,
                  child: FadeTransition(
                    opacity: animation,
                    child: Text(
                      value,
                      softWrap: true,
                      style: const TextStyle(fontSize: 32),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
