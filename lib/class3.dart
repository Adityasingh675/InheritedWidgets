import 'package:flutter/material.dart';
import 'package:inherited_widget/count_provider.dart';
import 'package:inherited_widget/counter.dart';
import 'package:inherited_widget/counter_model.dart';
import 'package:scoped_model/scoped_model.dart';

class Class3 extends StatelessWidget {
  // final MyCounter myCounter;
  // Class3(this.myCounter);
  @override
  Widget build(BuildContext context) {
    // MyCounter myCounter = CounterProvider.of(context).myCounter;
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => Center(
        child: Text(
          "Class 3 : ${model.counts}",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
