import "package:expense_tracker/main.dart";
import "package:expense_tracker/models/expense.dart";
import "package:expense_tracker/widgets/expenses_list/expense_item.dart";
import "package:flutter/material.dart";

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenseList, required this.onRemoveExpense});

  final List<Expense> expenseList;

  final void Function(Expense expense) onRemoveExpense;
  @override
  Widget build(BuildContext context) {
    // used when we have a list of unknown (potenrially a great numeber)
    // items and list view with the builder ensures that the widget
    // in the view are only created when he view is about to be created

    return ListView.builder(
      // the itemBuilder will be called the exact number of times as the item count
      itemCount: expenseList.length,
      itemBuilder: (ctx, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.25),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal,
          ),
        ),
        //Used to make keys when a key is needed
        key: ValueKey(expenseList[index]),
        onDismissed: (direction) {
          onRemoveExpense(
            expenseList[index],
          );
        },
        child: ExpenseItem(
          expense: expenseList[index],
        ),
      ),
    );
  }
}
