import 'package:flutter/material.dart';

class StackedUsers extends StatelessWidget {
  final Color color;
  final Color iconColor;
  final IconData icon;
  const StackedUsers({super.key, required this.color, required this.icon, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
           color: color),
      child:  Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
