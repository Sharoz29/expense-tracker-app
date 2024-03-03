import "package:expense_tracker/models/expense.dart";
import "package:expense_tracker/widgets/expenses_list/expense_item.dart";
import "package:flutter/material.dart";

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenseList});

  final List<Expense> expenseList;

  @override
  Widget build(BuildContext context) {
    // used when we have a list of unknown (potenrially a great numeber)
    // items and list view with the builder ensures that the widget
    // in the view are only created when he view is about to be created

    return ListView.builder(
      // the itemBuilder will be called the exact number of times as the item count
      itemCount: expenseList.length,
      itemBuilder: (context, index) => ExpenseItem(
        expense: expenseList[index],
      ),
    );
  }
}
