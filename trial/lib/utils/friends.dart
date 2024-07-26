import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  final Color boxColor;
  final Color iconColor;
  final String username;
  const Friends({super.key, required this.boxColor, required this.iconColor, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.blue[100], borderRadius: BorderRadius.circular(24)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color:boxColor),
              child: Icon(
                Icons.person,
                color:iconColor,
              ),
            ),
          ),
          Text(username)
        ],
      ),
    );
  }
}
