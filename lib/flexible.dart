import 'package:flutter/material.dart';

class FlexibleWidget extends StatefulWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  _FlexibleWidgetState createState() => _FlexibleWidgetState();
}

class _FlexibleWidgetState extends State<FlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 0),
                child: Text(
                  "fit : Flexfit.tight",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 2)),
                width: double.infinity,
                child: Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          color: Colors.yellow,
                          height: 80,
                          width: 80,
                        )),
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          color: Colors.blueAccent,
                          height: 80,
                          width: 80,
                        )),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        color: Colors.green,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 0),
                child: Text(
                  "fit : Flexfit.loose",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 2)),
                width: double.infinity,
                child: Row(
                  children: [
                    Flexible(
                        fit: FlexFit.loose,
                        child: Container(
                          color: Colors.yellow,
                          height: 80,
                          width: 80,
                        )),
                    Flexible(
                        fit: FlexFit.loose,
                        child: Container(
                          color: Colors.blueAccent,
                          height: 80,
                          width: 80,
                        )),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        color: Colors.green,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 0),
                child: ListTile(
                  title: Text(
                    "\'flex : 2\' of Blue box , fit : FlexFit.tight",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    "In this Flexible box we have given flex as 2 and fit as Flexfit.tight . However if we had specified fit as Flexfit.loose or hadn't given the fit argument at all , the Blue box wouldn't have taken twice its minimum space.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 2)),
                width: double.infinity,
                child: Row(
                  children: [
                    Flexible(
                        child: Container(
                      color: Colors.yellow,
                      height: 80,
                      width: 80,
                    )),
                    Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                          color: Colors.blueAccent,
                          height: 80,
                          width: 80,
                        )),
                    Flexible(
                      child: Container(
                        color: Colors.green,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: ListTile(
                  title: Text(
                    "\'flex : 2\' of Blue box , fit : FlexFit.loose",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    "Despite of giving flex as 2 to the blue box , it still dosen't grow in size because we have kept fit as FlexFit.loose",
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(bottom: 15, top: 5, left: 15, right: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 2)),
                width: double.infinity,
                child: Row(
                  children: [
                    Flexible(
                        child: Container(
                      color: Colors.yellow,
                      height: 80,
                      width: 80,
                    )),
                    Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          color: Colors.blueAccent,
                          height: 80,
                          width: 80,
                        )),
                    Flexible(
                      child: Container(
                        color: Colors.green,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 0),
                child: ListTile(
                  title: Text(
                    "\'flex : 2\' of Blue box , fit : FlexFit.tight",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    "Now if we give fit as 2 to two boxes , namely blue and green , instead of overflowing , the two boxes adjust themselves and the result is that their size is a bit less than twice the minimum length , in order to fit both of them inside the container.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 2)),
                width: double.infinity,
                child: Row(
                  children: [
                    Flexible(
                        child: Container(
                      color: Colors.yellow,
                      height: 80,
                      width: 80,
                    )),
                    Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                          color: Colors.blueAccent,
                          height: 80,
                          width: 80,
                        )),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(
                        color: Colors.green,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FlexibleDescription extends StatelessWidget {
  const FlexibleDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          child: Text(
        """A widget that controls how a child of a Row, Column, or Flex flexes.

Using a Flexible widget gives a child of a Row, Column, or Flex the flexibility to expand to fill the available space in the main axis (e.g., horizontally for a Row or vertically for a Column), but, unlike Expanded, Flexible does not require the child to fill the available space.

A Flexible widget must be a descendant of a Row, Column, or Flex, and the path from the Flexible widget to its enclosing Row, Column, or Flex must contain only StatelessWidgets or StatefulWidgets (not other kinds of widgets, like RenderObjectWidgets).
        """,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      )),
    );
  }
}
