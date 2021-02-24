import 'package:avtaar_assign/Component/first.dart';
import 'package:avtaar_assign/Component/otherComp.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  final Widget child;
  HomePage({Key key, this.child}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

int i = 0;

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
            title: Text(
              'Lessons',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
            actions: <Widget>[
              // Image.asset('assets/BG.jpg'),
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
              indicatorWeight: 4.0,
              indicatorSize: TabBarIndicatorSize.label,
              onTap: (index) {
                setState(() {
                  switch (index) {
                    case 0:
                      i = 0;
                      break;
                    case 1:
                      i = 1;
                      break;
                    case 2:
                      i = 2;
                      break;
                    case 3:
                      i = 3;
                      break;
                    case 4:
                      i = 4;
                      break;
                    case 5:
                      i = 5;
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
                      style: TextStyle(
                        color: i == 0 ? Colors.black : Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Environment',
                      style: TextStyle(
                        color: i == 1 ? Colors.black : Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Techology',
                      style: TextStyle(
                          color: i == 2 ? Colors.black : Colors.grey,
                          fontSize: 16.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Research',
                      style: TextStyle(
                          color: i == 3 ? Colors.black : Colors.grey,
                          fontSize: 16.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '5th',
                      style: TextStyle(
                          color: i == 4 ? Colors.black : Colors.grey,
                          fontSize: 16.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '6th',
                      style: TextStyle(
                          color: i == 5 ? Colors.black : Colors.grey,
                          fontSize: 16.0),
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
