import 'package:avtaar_assign/model/lesson.dart';
import 'package:flutter/material.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//flutter build apk --build-name=1.0.3 --build-number=3
class DesignLe extends StatefulWidget {
  int colorVal;
  DesignLe(this.colorVal);

  _DesignTabState createState() => _DesignTabState();
}

class _DesignTabState extends State<DesignLe>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final _marked = Set<Lessons>();
  final _locked = Set<Lessons>();

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 5);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xff3f51b5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffEFF0F1),
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Padding(
        padding: EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
        child: _buildDesign(),
      ),
    );
  }

  Widget _buildDesign() {
    return Container(
      child: ListView.builder(
          itemCount: designs.length,
          itemBuilder: (context, index) {
            return _buildRow(designs[index]);
          }),
    );
  }

  Widget _buildRow(Lessons p) {
    final already = _marked.contains(p);
    final _lock = _locked.contains(p);
    int x = p.progress;
    return Row(
      children: <Widget>[
        Expanded(
            child: Card(
          child: Column(
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.all(16.0),
                title: Text(
                  p.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                leading: Image.asset(p.imageUrl),
                //CircleAvatar(backgroundImage: AssetImage(p.imageUrl)),
                subtitle: Text(p.subtitle),
                trailing: IconButton(
                  icon: already
                      ? Icon(Icons.bookmark)
                      : Icon(Icons.bookmark_border),
                  color: already ? Colors.black : null,
                  padding: EdgeInsets.only(bottom: 40.0, left: 15.0),
                  onPressed: () {
                    setState(() {
                      if (already) {
                        _marked.remove(p);
                      } else {
                        _marked.add(p);
                      }
                    });
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlockScreen(),
                      settings: RouteSettings(
                        arguments: p,
                      ),
                    ),
                  );
                },
              ),
              Row(children: <Widget>[
                //    for (int i = 0; i < x;i++){

                //    }
                Expanded(
                  child: Divider(
                    color: x == 0
                        ? Colors.grey[300]
                        : Colors.lightGreenAccent[700],
                    thickness: 5,
                    indent: 5,
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: (x == 0 || x == 1)
                      ? Colors.grey[300]
                      : Colors.lightGreenAccent[700],
                  thickness: 5,
                  indent: (x == 0 || x == 1) ? 0 : 5,
                )),
                Expanded(
                  child: Divider(
                    color: x == 3
                        ? Colors.lightGreenAccent[700]
                        : Colors.grey[300],
                    thickness: 5,
                    indent: x == 3 ? 5 : 0,
                    endIndent: 5,
                  ),
                ),
              ])
            ],
          ),
        )),
        IconButton(
            icon: _lock
                ? Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.grey[400],
                  )
                : Icon(
                    Icons.lock_open_outlined,
                    color: Colors.grey[400],
                  ),
            onPressed: () {
              setState(() {
                if (_lock) {
                  _locked.remove(p);
                } else {
                  _locked.add(p);
                }
              });
            }),
      ],
    );
  }
}

class BlockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Lessons pass = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(pass.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
            child: Text(
          pass.name,
          style: TextStyle(fontSize: 22.0),
        )),
      ),
    );
  }
}
