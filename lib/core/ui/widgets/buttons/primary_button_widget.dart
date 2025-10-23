import 'package:flutter/material.dart';

enum StatusButton { success, error }

class PrimaryButtonWidget extends StatelessWidget {
  final String label;
  final Function() onTap;
  final StatusButton statusButton;

  const PrimaryButtonWidget({
    super.key,
    required this.label,
    required this.onTap,
    required this.statusButton,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor(),
          border: Border.all(color: borderColor(), width: 2),
          borderRadius: BorderRadius.circular(24),
        ),
        alignment: Alignment.center,
        height: 48,
        child: Text(label),
      ),
    );
  }

  Color backgroundColor() {
    switch (statusButton) {
      case StatusButton.success:
        return Color(0xFFB2FDA0);
      case StatusButton.error:
        return Color(0xFFF68E9E);
    }
  }

  Color borderColor() {
    switch (statusButton) {
      case StatusButton.success:
        return Color(0xFF1B8300);
      case StatusButton.error:
        return Color(0xFFBB001E);
    }
  }
}
