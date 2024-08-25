import 'package:flutter/material.dart';
import 'package:expenses_tracker/models/expense.dart';
import 'package:expenses_tracker/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Groceries',
      amount: 16.53,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Train ticket',
      amount: 32.10,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Lunch',
      amount: 12.99,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Office supplies',
      amount: 23.50,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
