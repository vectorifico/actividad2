import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  const W1({super.key, required this.w1add, required this.w1less, required this.X,});
  final Function() w1add;
  final Function() w1less;
  final double X;
  //color: Theme.of(context).primaryColor,
  // color: Theme.of(context).colorScheme.inversePrimary,
  // container margin: const EdgeInsets.all(10),
  // container padding: const EdgeInsets.all(10),
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Text( X.toString(),
              key: const Key('W1Value'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      w1add();
                    },
                    icon: const Icon(Icons.add),
                    key: const Key('W1Add')),
                IconButton(
                    onPressed: () {
                      w1less();
                    },
                    icon: const Icon(Icons.remove),
                    key: const Key('W1Sub'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
