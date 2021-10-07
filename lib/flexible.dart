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
                  style: TextStyle(fontSize: 22),
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
                  style: TextStyle(fontSize: 22),
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
                child: Text(
                  "\'flex : 2\' of Blue box , fit : FlexFit.tight",
                  style: TextStyle(fontSize: 22),
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
                    style: TextStyle(
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                      "Despite of giving flex as 2 to the blue box , it still dosen't grow in size because we have kept fit as FlexFit.loose"),
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
                child: Text(
                  "\'flex : 2\' of Blue box , fit : FlexFit.tight",
                  style: TextStyle(fontSize: 22),
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
            ],
          ),
        ),
      ),
    );
  }
}
