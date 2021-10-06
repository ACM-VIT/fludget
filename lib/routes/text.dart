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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'A run of text with a single style.\n\n'
'The Text widget displays a string of text with single style.'
' The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.',
          style: TextStyle(color: Colors.white,fontSize: 20),
        ),
      ),
    );
  }
}
