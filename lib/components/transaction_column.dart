import 'package:flutter/material.dart';

class TransactionColumn extends StatelessWidget {
  const TransactionColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Text('20', style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Income',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w700),
                      ),
                      Text('20',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                  Column(
                    children: [
                      Text('Expense',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w700)),
                      Text('20',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
