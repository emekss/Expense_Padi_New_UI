import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        color: Colors.white,
        backgroundColor: Colors.deepPurple,
        items: const [
          Icon(
            Icons.home,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.bar_chart_rounded,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.add,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.wallet,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.settings,
            color: Colors.deepPurple,
          ),
        ]);
  }
}
