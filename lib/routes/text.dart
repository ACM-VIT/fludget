import 'package:flutter/material.dart';

class TextSample extends StatelessWidget {
  const TextSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Text"),
      // ),
      backgroundColor: Colors.grey[900],
      body: Center(
        heightFactor: 15,
        child: Text(
          "This is sample text.",
          style: TextStyle(
              color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class TextWidgetDescription extends StatelessWidget {
  const TextWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Text(
          'Text Description Here',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
