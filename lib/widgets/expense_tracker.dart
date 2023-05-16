import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expsenses.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_list.dart';
import 'package:expense_tracker/widgets/page_header.dart';

class ExpenseTracker extends StatefulWidget {
  const ExpenseTracker({super.key});

  @override
  State<ExpenseTracker> createState() {
    return _ExpenseTrackerState();
  }
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Coffee',
      amount: 12.99,
      date: DateTime.now(),
      category: Category.leirsure,
    ),
  ];

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Expense Tracker',
      home: Scaffold(
        body: Column(
          children: [
            PageHeader(() {}),
            const SizedBox(height: 30),
            const Text('the Chart'),
            const SizedBox(height: 30),
            Expanded(child: ExpenseList(expenses: _registeredExpenses)),
          ],
        ),
      ),
    );
  }
}
