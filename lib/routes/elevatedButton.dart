import 'package:flutter/material.dart';

class ElevatedButtonImplimentation extends StatelessWidget {
  const ElevatedButtonImplimentation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
                  onPressed: () => _message(context),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                  ),
                  child: Text("Elevated Button")),
        
      )
    );
  }
}

void _message(BuildContext context) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("ElevatedButton was pressed"),
    ));
class ElevatedButtonDescription extends StatelessWidget {
  const ElevatedButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          "Elevated Button is one of Material Design's buttons whose characteristic is the elevation increases when it's being pressed by the user",
          style: TextStyle(
          fontSize: 20),
        ),
      ),
    );
  }
}