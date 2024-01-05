import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String label;
  final Color color;
  const TransactionCard({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            const Icon(
              Icons.compare_arrows_rounded,
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Transfer',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                    Text(label),
                  ],
                ),
                const SizedBox(width: 150),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      '14 Aug, 2023',
                    ),
                    Text(
                      'N900',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: color,
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
