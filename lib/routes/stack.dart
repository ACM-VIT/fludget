import 'package:flutter/material.dart';

class StackSample extends StatelessWidget {
  const StackSample({Key? key}) : super(key: key);

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

class StackWidgetDescription extends StatelessWidget {
  const StackWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'A widget that displays its children in a horizontal array.\n\n'
          'To cause a child to expand to fill the available horizontal space, wrap the child in an Expanded widget.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
