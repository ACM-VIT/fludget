import 'package:flutter/material.dart';

class TextButtonImplimentation extends StatelessWidget {
  const TextButtonImplimentation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: TextButton(
                onPressed: () => _message(context),
                style: TextButton.styleFrom(
                  primary: Colors.orange[900],
                  backgroundColor: Colors.white54
                ),
                child: Text("Text Button"),
              ),
      )
    );
  }
}
void _message(BuildContext context) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("TextButton was pressed"),
    ));
class TextButtonDescription extends StatelessWidget {
  const TextButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          "A TextButton widget is just a text label displayed on a zero elevation Material widget. By default, it doesn’t have visible borders and reacts to touches by filling with a background color",
          style: TextStyle(color: Colors.white,
          fontSize: 20),
        ),
      ),
    );
  }
}