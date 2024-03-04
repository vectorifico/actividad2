import 'dart:ffi';

import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
 const  MyHomePage({super.key, required this.title});

  final String title;




  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  double X=0.5;
  void w3plus(){
   setState(() {
      X+= 1;
      X = double.parse(X.toStringAsFixed(1));
   });; 
  }
   void w3less(){
   setState(() {
      X-= 1;
      X = double.parse(X.toStringAsFixed(1));
   });; 
  }
   void w1add(){
   setState(() {
      X+= 0.1;
      X = double.parse(X.toStringAsFixed(1));
   });; 
  }
   void w1less(){
   setState(() {
      X-= 0.1;
      X = double.parse(X.toStringAsFixed(1));
   });; 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      X=0.5;
                    });
                  },
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[W1(w1add: w1add,w1less: w1less, X: X,)
              , W2(X: X,),
               W3(w3add:w3plus,w3less: w3less, X: X,)],
            ),
          ),
        ],
      )),
    );
  }
}
