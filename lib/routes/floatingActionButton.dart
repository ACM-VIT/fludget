import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonImplimentation extends StatelessWidget {
  const FloatingActionButtonImplimentation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Floating Action Button:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () => _message(context),
            backgroundColor: Theme.of(context).primaryColor,
            tooltip: ("Hold to show tooltip"),
            child: Icon(
              Icons.add,
              size: 40.0,
            ),
          ),
        ],
      ),
    ));
  }
}

void _message(BuildContext context) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("ElevatedButton was pressed"),
    ));

class FloatingActionButtonDescription extends StatelessWidget {
  const FloatingActionButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          "A floating action button is a circular icon button that hovers over content to promote a primary action in the application.",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class FABCode extends CodeString {
  const FABCode();
  @override
  String buildCodeString() {
    return """FloatingActionButton(
                onPressed: () => _message(context),
                backgroundColor: Theme.of(context).primaryColor,
                tooltip: ("Hold to show tooltip"),
                child: Icon(
                  Icons.add,
                  size: 40.0,
                ),
              ),
""";
  }
}
