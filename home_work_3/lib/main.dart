import 'package:flutter/material.dart';

import 'pages/register_form_page.dart';

import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register Form Demo ${DateFormat('EEEE').format(DateTime(1485789600))}',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const RegisterFormPage(),
    );
  }
}
