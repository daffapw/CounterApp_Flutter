import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  @override
  CounterAppState createState() => CounterAppState();
}

class CounterAppState extends State<CounterApp> {
  var number = 0;

  void countNumber() {
    setState(() {
      number = number + 1;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString(), style: TextStyle(fontSize: 10 + number.toDouble()),),
              RaisedButton(
                child: Text('Count!'),
                onPressed: countNumber,
              ),
              RaisedButton(
                child: Text('Reset Counter'),
                onPressed: resetNumber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
