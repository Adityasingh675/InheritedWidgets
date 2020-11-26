import 'package:flutter/material.dart';
import 'package:inherited_widget/count_provider.dart';
import 'package:inherited_widget/counter.dart';
import 'package:inherited_widget/counter_model.dart';
import 'package:random_pk/random_pk.dart';
import 'package:scoped_model/scoped_model.dart';
import 'class1.dart';
import 'class2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // MyCounter myCounter = MyCounter(0);
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      // myCounter: myCounter,
      child: Scaffold(
        appBar: AppBar(
          title: Text("InheritedWidget and Scoped Model Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Class1(),
              Class2(),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              RandomContainer(
                height: 100.0,
                width: 100.0,
              ),
            ],
          ),
        ),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          rebuildOnChange: false,
          builder: (context, _, model) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              // setState(() {
              //   myCounter.increaseCount();
              // });

              model.add();
            },
          ),
        ),
      ),
    );
  }
}
