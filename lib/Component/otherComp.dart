import 'package:flutter/material.dart';

class OtherComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: Scaffold(
            //appBar: AppBar(title: Text('Word Pair')),
            body: Center(
                child: Text(
          'Hello',
          style: TextStyle(fontSize: 22.0),
        ))));
  }
}
