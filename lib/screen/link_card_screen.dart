import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/balance_card.dart';

class LinkCardScreen extends StatelessWidget {
  const LinkCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Emeka!',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              Text(
                'Welcome to ExpensePadi',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              SizedBox(height: 20),
              Center(
                  child: BalanceCard(
                title: 'Total Balance',
              )),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    ));
  }
}
