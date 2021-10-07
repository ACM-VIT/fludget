import 'package:flutter/material.dart';

class IconImplementation extends StatelessWidget {
  const IconImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Icon"),
      // ),
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(
            Icons.ac_unit,
            color: Colors.blue[100],
            size: 50.0,
          ),
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
            size: 100.0,
          ),
          Icon(
            Icons.cloud,
            color: Colors.white,
            size: 75.0,
          )
        ]),
      ),
    );
  }
}

class IconDescription extends StatelessWidget {
  const IconDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'It is used to specify the icon name to display in the application. Generally, Flutter uses material design icons that are symbols for common actions and items. It is used to specify the color of the icon.',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
