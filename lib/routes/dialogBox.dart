import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);
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
