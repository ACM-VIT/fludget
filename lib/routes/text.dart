import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class TextImplementation extends StatelessWidget {
  const TextImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: 15,
        child: Text(
          "This is sample text.",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
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
        'Text Description Here',
      ),
    );
  }
}

class TextCode extends CodeString {
  const TextCode();
  @override
  String buildCodeString() {
    return """ Text(
          "This is sample text.",
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
""";
  }
}
