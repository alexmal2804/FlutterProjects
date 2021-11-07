// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const MyFirsApp());

class MyFirsApp extends StatefulWidget {
  const MyFirsApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "IndieFlower"),
        home: Scaffold(
      appBar: AppBar(title: const Text('Adding Assets')),
      body: Center(
        child: Stack(
          children: <Widget>[
            const Image(
              image: AssetImage("assets/images/bg.jpg"),
              width: double.infinity,
              height: double.infinity,
            ),
            Image.asset(
              "assets/icons/icon.png",
              width: double.infinity,
              height: double.infinity,
            ),
            const Positioned(
                top: 12,
                left: 75,
                child: Text(
                  "My custom font",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white, fontFamily: 'IndieFlower'
                  ),
                ))
          ],
        ),
      ),
    ));
    throw UnimplementedError();
  }
}
