import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(
              Icons.compare_arrows_rounded,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Transfer',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                    Text('Bank Income'),
                  ],
                ),
                SizedBox(width: 150),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '14 Aug, 2023',
                    ),
                    Text(
                      'N900',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
