import 'package:flutter/material.dart';

class RowSample extends StatelessWidget {
  const RowSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Row"),
      // ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.red,
                child: FlutterLogo(
                  size: 85.0,
                ),
              ),
              Container(
                color: Colors.green,
                child: FlutterLogo(
                  size: 85.0,
                ),
              ),
              Container(
                color: Colors.blue,
                child: FlutterLogo(
                  size: 85.0,
                ),
              ),
              Container(
                color: Colors.yellow,
                child: FlutterLogo(
                  size: 85.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowWidgetDescription extends StatelessWidget {
  const RowWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Row Description Here',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
