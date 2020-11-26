import 'package:flutter/material.dart';

class Class1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Class 1", style: Theme.of(context).textTheme.headline4),
        ],
      ),
    );
  }
}
