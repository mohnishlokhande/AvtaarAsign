import 'package:avtaar_assign/Component/first.dart';
import 'package:avtaar_assign/Component/otherComp.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  final Widget child;
  HomePage({Key key, this.child}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

Color PrimaryColor = Colors.black;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            // backgroundColor: Color(0xff109618),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 30.0,
              color: Colors.black,
              onPressed: () {},
            ),
            backgroundColor: Colors.white,
            title: Text('Lessons'),
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.grade_outlined),
                iconSize: 30.0,
                color: Colors.yellow,
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.purple,
              indicatorWeight: 6.0,
              onTap: (index) {
                setState(() {
                  switch (index) {
                    case 0:
                      PrimaryColor = Color(0xffff5722);
                      break;
                    case 1:
                      PrimaryColor = Color(0xff3f51b5);
                      break;
                    case 2:
                      PrimaryColor = Color(0xffe91e63);
                      break;
                    case 3:
                      PrimaryColor = Color(0xff9c27b0);
                      break;
                    case 4:
                      PrimaryColor = Color(0xff2196f3);
                      break;
                    default:
                  }
                });
              },
              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Text(
                      'Design',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Environment',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Techology',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Research',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '5th',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '6th',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              DesignLe(0xffff5722),
              OtherComp(),
              OtherComp(),
              OtherComp(),
              OtherComp(),
              OtherComp(),
            ],
          )),
    );
  }
}
