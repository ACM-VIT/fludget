import 'package:flutter/material.dart';

class FloatingActionButtonImplimentation extends StatelessWidget {
  const FloatingActionButtonImplimentation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Floating Action Button:",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
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
        
      )
    );
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
          style: TextStyle(color: Colors.white,
          fontSize: 20),
        ),
      ),
    );
  }
}