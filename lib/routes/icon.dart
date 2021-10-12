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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'A graphical icon widget drawn with a glyph from a font described in an IconData such as material\'s predefined IconDatas in Icons.',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
