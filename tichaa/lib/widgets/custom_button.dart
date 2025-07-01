import 'package:flutter/material.dart';

/// A reusable custom button widget for Tichaa app
class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final bool outlined;

  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.outlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final child = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) ...[
          Icon(icon, size: 20),
          const SizedBox(width: 8),
        ],
        Text(label),
      ],
    );
    return outlined
        ? OutlinedButton(
            onPressed: onPressed,
            child: child,
          )
        : ElevatedButton(
            onPressed: onPressed,
            child: child,
          );
  }
}
