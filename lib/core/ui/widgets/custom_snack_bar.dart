import 'package:flutter/material.dart';

abstract class CustomSnackBar {
  static void openSnackBar({
    required BuildContext context,
    required String message,
  }) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
