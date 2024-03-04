import 'dart:ffi';

import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3({super.key, required this.w3add, required this.w3less, required this.X});
  final Function() w3add;
  final Function() w3less;
  final double X;
  @override
  Widget build(BuildContext context) {
    String texto= X.toString();
    return Container(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Text(texto,
              key: const Key('W3Value'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      w3add();
                    },
                    icon: const Icon(Icons.add),
                    key: const Key('W3Add')),
                IconButton(
                    onPressed: () {
                      w3less();
                    },
                    icon: const Icon(Icons.remove),
                    key: const Key('W3Sub'))
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
/*
  void onSubW3() {
    setState(() {
      _value -= 1;
      _value = double.parse(_value.toStringAsFixed(1));
    });
  }
  */ 