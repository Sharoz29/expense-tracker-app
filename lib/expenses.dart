import "package:flutter/material.dart";

// class Expenses extends StatelessWidget{
//   const Expenses({super.key});

//   @override
//   Widget build(context){
//     return const Text("Heloo");
//   }
// }
class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("The chart"),
          Text("Expenses list")
        ],
      )
      );
  }
}
