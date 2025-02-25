import 'package:flutter/material.dart';

class FadeIcon extends StatelessWidget {
  const FadeIcon({
    required this.animation,
    required this.userIconPath,
    super.key,
  });
  final Animation<double> animation;
  final String userIconPath;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return FadeTransition(
      opacity: animation,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: colorScheme.shadow.withAlpha(31),
              spreadRadius: 5,
            ),
          ],
        ),
        child: CircleAvatar(
          radius: 48,
          backgroundImage: NetworkImage(userIconPath),
        ),
      ),
    );
  }
}
