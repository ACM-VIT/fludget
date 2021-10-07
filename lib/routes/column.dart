import 'package:flutter/material.dart';

class ColumnImplementation extends StatelessWidget {
  const ColumnImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Column"),
      // ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.red,
                child: FlutterLogo(
                  size: 100.0,
                ),
              ),
              Container(
                color: Colors.green,
                child: FlutterLogo(
                  size: 100.0,
                ),
              ),
              Container(
                color: Colors.blue,
                child: FlutterLogo(
                  size: 100.0,
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

class ColumnDescription extends StatelessWidget {
  const ColumnDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Column is a widget that displays its children in a vertical array. If you want to define several widgets rendered in a vertical column according to their order, the Column widget is suitable for that purpose.',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
