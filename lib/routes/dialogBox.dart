// ignore_for_file: deprecated_member_use

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
      // appBar: AppBar(
      //   title: Text("Dialog Widget"),
      // ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Click to show:",
              style: TextStyle(
                color: Colors.white,
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
                  primary: Colors.orange[900],
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
        'The dialog is a type of widget which comes on the window or the screen which contains any critical information or can ask for any decision. When a dialog box is popped up the all the other functions get disabled until you close the dialog box or provide an answer.',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
