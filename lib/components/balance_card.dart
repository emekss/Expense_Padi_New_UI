import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 149,
      width: 312,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          Text(
            'Total Balance',
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              Text(
                '300,000',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(width: 20),
              Text(
                'NGN',
                style: TextStyle(fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
