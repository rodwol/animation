import 'package:flutter/material.dart';
import 'ExplicitAnimationScreen.dart'; // If this file is in the same directory

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExplicitAnimationScreen(),
    );
  }
}
