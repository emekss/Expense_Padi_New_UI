import 'package:flutter/material.dart';

class ArrowIcon extends StatelessWidget {
  final Color color;
  final IconData icon;
  const ArrowIcon({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 45,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
