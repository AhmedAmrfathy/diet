import 'package:diet/widgets/firstview.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  var index = 0;
  Map screens = {
    0: FirdtView(),
    1: Container(
      color: Colors.yellow,
    ),
    2: Container(
      color: Colors.green,
    ),
    3: Container(
      color: Colors.purple,
    )
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(70, 90, 213, .7),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Container(color: Colors.transparent,padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Stack(children: <Widget>[
            screens[index]
            ,
            ],),
        ),
      bottomNavigationBar: Container(
        height: 75,
        child: ClipRRect(
          borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft:Radius.circular(20)),
          child: BottomAppBar(shape: CircularNotchedRectangle(),
            notchMargin: 9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Icon(
                      Icons.bookmark_border,
                      color: index == 0
                          ? Color.fromRGBO(84, 99, 221, 1)
                          : Colors.grey,
                      size: 30,
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Icon(Icons.accessibility,
                        color: index == 1
                            ? Color.fromRGBO(84, 99, 221, 1)
                            : Colors.grey,
                        size: 30)),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Icon(Icons.fastfood,
                      color: index == 2
                          ? Color.fromRGBO(84, 99, 221, 1)
                          : Colors.grey,
                      size: 30),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    child: Icon(Icons.person_outline,
                        color: index == 3 ? Colors.cyan : Colors.grey,
                        size: 30)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
