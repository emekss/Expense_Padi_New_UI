import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/balance_card.dart';
import 'package:flutter_application_1/components/curved_navbar.dart';
import 'package:flutter_application_1/components/income_card.dart';
import 'package:flutter_application_1/components/expense_card.dart';
import 'package:flutter_application_1/components/transaction_card.dart';
import 'package:flutter_application_1/components/transaction_column.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.deepPurple,
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
                  Text(
                    'Overview',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [IncomeCard(), ExpenseCard()],
                  ),
                  SizedBox(height: 20),
                  TransactionColumn(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transaction',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_drop_down_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    child: SizedBox(
                      height: 750,
                      child: Column(
                        children: [
                          TransactionCard(
                            color: Colors.green,
                            label: 'Supermarket',
                            price: '1200',
                          ),
                          SizedBox(height: 10),
                          TransactionCard(
                            color: Colors.red,
                            label: 'Supermarket',
                            price: '800',
                          ),
                          SizedBox(height: 10),
                          TransactionCard(
                            color: Colors.green,
                            label: 'Supermarket',
                            price: '700',
                          ),
                          SizedBox(height: 10),
                          TransactionCard(
                            color: Colors.red,
                            label: 'Supermarket',
                            price: '200',
                          ),
                          SizedBox(height: 10),
                          TransactionCard(
                            color: Colors.green,
                            label: 'Supermarket',
                            price: '900',
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomNavBar());
  }
}
