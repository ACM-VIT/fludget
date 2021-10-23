import 'package:fludget/Models/codeString.dart';
import "package:flutter/material.dart";

class FittedBoxImplementation extends StatelessWidget {
  const FittedBoxImplementation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 250,
            child: FittedBox(
              fit: BoxFit.contain,
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                color: Theme.of(context).primaryColor,
                child: Text(
                  "Using Fitted Box to display Text",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Divider(
            height: 100,
          ),
          Text(
            "The following are the inplementations of Boxfit.contain,Boxfit.cover and Boxfit.fill respectively",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Divider(
            height: 100,
          ),
          Container(
            height: 250,
            child: FittedBox(
              fit: BoxFit.contain,
              alignment: Alignment.center,
              child: Image.asset('assets/images/meme.png'),
            ),
          ),
          Divider(
            height: 100,
          ),
          Container(
            height: 250,
            child: FittedBox(
              fit: BoxFit.cover,
              alignment: Alignment.center,
              child: Image.asset('assets/images/meme.png'),
            ),
          ),
          Divider(
            height: 100,
          ),
          Container(
            height: 250,
            child: FittedBox(
              fit: BoxFit.fill,
              alignment: Alignment.center,
              child: Image.asset('assets/images/meme.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class FittedBoxDescription extends StatelessWidget {
  const FittedBoxDescription();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'FittedBox is a very useful widget that scales and positions its child within itself according to fit and alignment.',
        ),
      ),
    );
  }
}

class FittedBoxCode extends CodeString {
  const FittedBoxCode();
  String buildCodeString() {
    return """FittedBox(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            child: child: Image.asset('assets/images/meme.png'),
            ))\n\n\n\nFittedBox(
            fit: BoxFit.contain,
            alignment: Alignment.center,
            child: child: Image.asset('assets/images/meme.png'),
            ))\n\n\n\nFittedBox(
            fit: BoxFit.fill,
            alignment: Alignment.center,
            child: child: Image.asset('assets/images/meme.png'),
            ))

            
            """;
  }
}
