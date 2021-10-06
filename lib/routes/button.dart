import 'package:flutter/material.dart';

class ButtonImplementation extends StatelessWidget {
  const ButtonImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Buttons"),
      // ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Outlined Button:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            OutlinedButton(
                onPressed: () => _message(context),
                style: OutlinedButton.styleFrom(
                  primary: Colors.orange[900],
                ),
                child: Text("Outlined Button")),
            SizedBox(height: 20.0),
            Text(
              "Elevated Button:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () => _message(context),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange[900],
                ),
                child: Text("Elevated Button")),
            SizedBox(height: 20.0),
            Text(
              "Text Button:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () => _message(context),
              style: TextButton.styleFrom(
                primary: Colors.orange[900],
              ),
              child: Text("Text Button"),
            ),
            SizedBox(height: 20.0),
            Text(
              "Floating Action Button:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            FloatingActionButton(
              onPressed: () => _message(context),
              backgroundColor: Colors.orange[900],
              tooltip: ("Hold to show tooltip"),
              child: Icon(
                Icons.add,
                size: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _message(BuildContext context) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Button was pressed"),
    ));

class ButtonDescription extends StatelessWidget {
  const ButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Button Description Here',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
