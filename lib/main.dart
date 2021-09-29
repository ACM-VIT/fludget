import 'package:fludget/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fludget',
      theme: ThemeData(
        primaryColor: Colors.orange[900],
        backgroundColor: Colors.grey[900],
      ),
      home: HomePage(),
    );
  }
}
