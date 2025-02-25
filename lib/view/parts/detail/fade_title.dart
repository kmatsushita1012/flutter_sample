import 'package:flutter/material.dart';

class FadeTitle extends StatelessWidget {
  const FadeTitle({required this.animation, required this.title, super.key});
  final Animation<double> animation;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FadeTransition(
        opacity: animation,
        child: Text(
          title,
          softWrap: true,
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
