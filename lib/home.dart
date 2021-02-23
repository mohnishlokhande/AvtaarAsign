import 'package:avtaar_assign/Component/category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: Colors.black,
          onPressed: () {},
        ),
        title: Text(
          'Lessons',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.grade_outlined),
            iconSize: 30.0,
            color: Colors.yellow,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Selector(),
        ],
      ),
    );
  }
}
