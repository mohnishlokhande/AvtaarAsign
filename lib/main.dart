import 'package:avtaar_assign/homepg.dart';
import 'package:flutter/material.dart';
//import './home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avtaar Assignment',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Color(0xE5E5E5),
      ),
      home: HomePage(),
    );
  }
}

