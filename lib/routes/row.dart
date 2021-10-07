import 'package:flutter/material.dart';

class RowImplementation extends StatelessWidget {
  const RowImplementation({Key? key}) : super(key: key);

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

class RowDescription extends StatelessWidget {
  const RowDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'A widget that displays its children in a horizontal array. To cause a child to expand to fill the available horizontal space, wrap the child in an Expanded widget. The Row widget does not scroll (and in general it is considered an error to have more children in a Row than will fit in the available room).',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
