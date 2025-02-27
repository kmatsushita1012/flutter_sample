import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  const CustomAppBar({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      foregroundColor: colorScheme.onPrimary,
      backgroundColor: colorScheme.primary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
