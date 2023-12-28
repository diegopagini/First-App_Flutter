import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomFloatingActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 5,
      enableFeedback: true,
      onPressed: onPressed,
      shape: const StadiumBorder(),
      child: Icon(icon),
    );
  }
}
