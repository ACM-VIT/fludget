import 'package:flutter/material.dart';

class TextImplementation extends StatelessWidget {
  const TextImplementation({Key? key}) : super(key: key);

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

class TextDescription extends StatelessWidget {
  const TextDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'A Text is a widget in Flutter that allows us to display a string of text with a single line in our application.',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
