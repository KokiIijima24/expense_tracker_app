import 'package:expense_tracker_app/widgets/expenses_list.dart';
import 'package:flutter/material.dart';

import 'models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'New Shoes',
        amount: 69.99,
        date: DateTime.now(),
        category: Category.other),
    Expense(
        title: 'Flutter Cource',
        amount: 10.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 15.99,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expenses'),
        ),
        body: Column(
          children: [
            const Text('The Chart'),
            Expanded(child: ExpensesList(expenses: _registeredExpenses))
          ],
        ));
  }
}
