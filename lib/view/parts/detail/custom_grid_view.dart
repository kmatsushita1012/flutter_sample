import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({required this.children, super.key});

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: children,
      ),
    );
  }
}
