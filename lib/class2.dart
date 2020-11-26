import 'package:flutter/material.dart';
import 'package:inherited_widget/class3.dart';
import 'package:inherited_widget/counter.dart';

class Class2 extends StatelessWidget {
  // final MyCounter myCounter;
  // Class2(this.myCounter);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Class2",
            style: Theme.of(context).textTheme.headline4,
          ),
          Class3(),
        ],
      ),
    );
  }
}
