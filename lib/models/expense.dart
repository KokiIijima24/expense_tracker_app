import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category {
  leisure,
  food,
  travel,
  work,
  other,
}

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category; // leisure Expense(vategory: 'leasute')

  Expense(this.category,
      {required this.title, required this.amount, required this.date})
      : id = uuid.v4();
}
