import 'package:fludget/constants/colors.dart';
import 'package:flutter/material.dart';

class ExpandedSample extends StatelessWidget {
  const ExpandedSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expanded widget in Column',
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      color: Colors.blue,
                      height: 80,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.amber,
                        width: 100,
                        child: Center(
                          child: Text("Expanded"),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      height: 80,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  'Expanded widget in Row',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 50,
                      color: Colors.red,
                    ),
                    Expanded(
                      child: Container(
                        width: 50,
                        color: Colors.green,
                        child: Center(
                          child: Text("Expanded"),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 50,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  'Expanded widget with flex factor',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.amber,
                        height: 100,
                        child: Center(
                          child: Text("Expanded - flex:2"),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      height: 100,
                      width: 50,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ExpandedWidgetDiscription extends StatelessWidget {
  const ExpandedWidgetDiscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Expanded Widget Description Here',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
