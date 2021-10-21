import 'package:fludget/Models/codeString.dart';
import "package:flutter/material.dart";

class FittedBoxImplementation extends StatelessWidget {
  const FittedBoxImplementation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FittedBox(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              color: Theme.of(context).primaryColor,
              height: 500,
              width: 500,
              child: Text(
                "Fitted Box",
                textAlign: TextAlign.center,
              ),
            )));
  }
}

class FittedBoxDescription extends StatelessWidget {
  const FittedBoxDescription();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'FittedBox is a very useful widget that scales and positions its child within itself according to fit and alignment.',
        ),
      ),
    );
  }
}

class FittedBoxCode extends CodeString {
  const FittedBoxCode();
  String buildCodeString() {
    return """FittedBox(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              color: Theme.of(context).primaryColor,
              height: 500,
              width: 500,
              child: Text(
                "Fitted Box",
                textAlign: TextAlign.center,
              ),
            ))""";
  }
}
