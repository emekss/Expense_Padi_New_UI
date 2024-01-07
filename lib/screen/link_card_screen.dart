import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/balance_card.dart';
import 'package:flutter_application_1/components/curved_navbar.dart';

import '../components/expense_card.dart';
import '../components/income_card.dart';
import '../components/transaction_column.dart';

class LinkCardScreen extends StatelessWidget {
  const LinkCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello, Emeka!',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                const Text(
                  'Welcome to ExpensePadi',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Center(
                    child: Container(
                  height: 149,
                  width: 312,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // SizedBox(height: 20),
                        Icon(
                          Icons.add,
                          size: 60,
                        ),

                        Text(
                          'Link Card',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                )),
                const SizedBox(height: 10),
                const Text(
                  'Overview',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [IncomeCard(), ExpenseCard()],
                ),
                const SizedBox(height: 20),
                const TransactionColumn(),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Transaction',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'No transactions, link account or add transactions manually',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
