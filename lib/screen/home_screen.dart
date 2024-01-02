import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/balance_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Emeka!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            Text(
              'Welcome to ExpensePadi',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            Center(child: BalanceCard())
          ],
        ),
      ),
    ));
  }
}
