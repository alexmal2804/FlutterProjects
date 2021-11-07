// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  CounterWidget counterWidget = CounterWidget();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.amber, border: Border.all()),
          padding: EdgeInsets.all(36),
          margin: EdgeInsets.all(24),
          child: Column(
            children: [
              Text(
                "Tap '-1' to decrement",
                style: TextStyle(fontSize: 18),
              ),
              counterWidget,
              Text(
                "Tap '+1' to increment",
                style: TextStyle(fontSize: 18),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _count--;
              });
            },
            icon: const Icon(Icons.exposure_minus_1),
            iconSize: 32,
            color: Colors.blueGrey,
          ),
          Text(
            '$_count',
            style: TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _count++;
              });
            },
            icon: const Icon(Icons.plus_one),
            iconSize: 32,
            color: Colors.blueGrey,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
