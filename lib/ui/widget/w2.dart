import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  const W2({super.key, required this.X});
  final double X;
  @override
  Widget build(BuildContext context) {
    double num= X%10;

    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color:((num-num.truncate())<0.4)? Colors.blueGrey:Colors.blue,

       // should be grey when the decimal is bellow 0.4
    );
  }
}
