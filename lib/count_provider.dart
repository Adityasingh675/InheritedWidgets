import 'package:flutter/material.dart';
import 'package:inherited_widget/counter.dart';

class CounterProvider extends InheritedWidget {
  final MyCounter myCounter;
  final Widget child;
  CounterProvider({this.child, this.myCounter}) : super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) {
    // return myCounter == oldWidget.myCounter;
    return myCounter != oldWidget.myCounter;
  }
}
