import 'package:flutter/material.dart';

class StackImplementation extends StatelessWidget {
  const StackImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Stack"),
      // ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Stack(
            children: [
              Container(
                color: Colors.red,
                child: FlutterLogo(
                  size: 400.0,
                ),
              ),
              Container(
                color: Colors.green,
                child: FlutterLogo(
                  size: 300.0,
                ),
              ),
              Container(
                color: Colors.blue,
                child: FlutterLogo(
                  size: 200.0,
                ),
              ),
              Container(
                color: Colors.yellow,
                child: FlutterLogo(
                  size: 100.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StackDescription extends StatelessWidget {
  const StackDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'The stack is a widget in Flutter that contains a list of widgets and positions them on top of the other. In other words, the stack allows developers to overlap multiple widgets into a single screen and renders them from bottom to top.',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
