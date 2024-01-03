import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/arrow_icon.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(12)),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ArrowIcon(
              icon: Icons.arrow_downward_rounded,
              color: Colors.red,
            ),
            Column(
              children: [
                Text(
                  'Expenses',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text('N10,000',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
