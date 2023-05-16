import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expense_tracker.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Expense Tracker',
    debugShowCheckedModeBanner: false,
    home: ExpenseTracker(),
  ));
}
