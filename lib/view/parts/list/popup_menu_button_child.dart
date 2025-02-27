import 'package:flutter/material.dart';

class PopupMenuButtonChild extends StatelessWidget {
  const PopupMenuButtonChild({required this.icon, super.key});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.secondaryContainer,
        border: Border.all(color: colorScheme.onSurface),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, size: 32),
    );
  }
}
