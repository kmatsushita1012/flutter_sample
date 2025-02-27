import 'package:flutter/material.dart';

Future<T?> pushPage<T>(BuildContext context, Widget page) {
  return Navigator.push(
    context,
    MaterialPageRoute<T>(
      builder: (context) => page,
    ),
  );
}
