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

class ButtonDescription extends StatelessWidget {
  const ButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Elevated Button:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'A Material Design "elevated button". Use elevated buttons to add dimension to otherwise mostly flat layouts, e.g. in long busy lists of content, or in wide spaces. Avoid using elevated buttons on already-elevated content such as dialogs or cards.',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              "Text Button:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'A Material Design "Text Button". Use text buttons on toolbars, in dialogs, or inline with other content but offset from that content with padding so that the button\'s presence is obvious. Text buttons do not have visible borders and must therefore rely on their position relative to other content for context. Avoid using text buttons where they would blend in with other content, for example in the middle of lists',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              "Floating Action Button:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'A material design floating action button. A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are most commonly used in the Scaffold.floatingActionButton field.',
              style: TextStyle(color: Colors.white),
            ),
        
          ],
        ),
      ),
    );
  }
}
