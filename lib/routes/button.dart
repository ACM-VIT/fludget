import 'package:flutter/material.dart';

class ButtonSample extends StatelessWidget {
  const ButtonSample({Key? key}) : super(key: key);

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
