// ignore_for_file: deprecated_member_use

import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class DialogBoxImplementation extends StatelessWidget {
  const DialogBoxImplementation({Key? key}) : super(key: key);
  Widget _buildDelDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text('This is title'),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.arrow_back),
        ),
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Icon(
            Icons.done,
            color: Colors.green,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Click to show:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          _buildDelDialog(context));
                },
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                ),
                child: Text("Elevated Button")),
          ],
        ),
      ),
    );
  }
}

class DialogBoxDescription extends StatelessWidget {
  const DialogBoxDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Dialog Box Description Here',
      ),
    );
  }
}

class DialogBoxCode extends CodeString {
  const DialogBoxCode();
  @override
  String buildCodeString() {
    return """AlertDialog(
      title: const Text('This is title'),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.arrow_back),
        ),
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Icon(
            Icons.done,
            color: Colors.green,
          ),
        ),
      ],
    );""";
  }
}
