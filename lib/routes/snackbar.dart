import 'package:fludget/constants/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SnackBarImplementation(),
    ),
  );
}

class SnackBarImplementation extends StatelessWidget {
  const SnackBarImplementation({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backroundColor,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("This is the Snackbar Widget",style: TextStyle(color: Colors.white),),
              ),
              SizedBox(height:20.0),
              ElevatedButton(
                  child: Text("Open Snackbar"),
                  onPressed:(){
                    final snackBarDemo = SnackBar(
                        content:  Text("This is a SnackBar Demo !",style: TextStyle(color: Colors.black),),
                        duration: Duration(seconds:3),
                        backgroundColor: Colors.white,
                        action: SnackBarAction(label:"CLOSE",onPressed:(){})
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBarDemo);
                  }
              ),
            ]
        )
    );
  }
}

class SnackBarDescription extends StatelessWidget {
  const SnackBarDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SnackBar Widget \n',
              style: TextStyle(
                fontSize: 26.0,
                color: Colors.white,
              ),
            ),
            RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: new TextStyle(
                    fontSize: 14.0, color: Colors.white, height: 1.2),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Snackbar in Flutter is a widget showing the lightweight message that briefly '
                        'informs the user when certain actions occur. It displays the message for a very short '
                        'period, and when the specified time completed, it will be '
                        'disappeared from the screen. By default, snack bar displays '
                        'at the bottom of the screen. It is an excellent way to give feedback to users. '
                        'It also contains some actions that allow the user to undo or redo any action. '
                        'Usually, the snack bar is used with the scaffold widget.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}