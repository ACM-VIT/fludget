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
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'Creates an alert dialog.Typically used in conjunction with [showDialog].The [contentPadding] must not be null. The [titlePadding] defaults to null, which implies a default that depends on the values of the other properties. See the documentation of [titlePadding] for details.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
