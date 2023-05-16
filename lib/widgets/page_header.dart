import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  const PageHeader(this.createExpense, {super.key});

  final void Function() createExpense;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[200],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Flutter Expense Tracker'),
          ElevatedButton(
            onPressed: createExpense,
            child: const Text('+'),
          ),
        ],
      ),
    );
  }
}
