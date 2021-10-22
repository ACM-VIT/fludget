import 'package:flutter/material.dart';
import 'package:fludget/Models/codeString.dart';

class RotatedBoxImplementation extends StatelessWidget {
  const RotatedBoxImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: <Widget>[
        Row(
          children: [
            Container(
                color: Theme.of(context).highlightColor,
                margin: EdgeInsets.all(25.0),
                padding: const EdgeInsets.all(20.0),
                child: Text('This is non-rotated text')),
            Container(
                color: Theme.of(context).highlightColor,
                margin: EdgeInsets.all(25.0),
                child: RotatedBox(
                    quarterTurns: 1,
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('This is rotated text')))),
            Container(
                color: Theme.of(context).highlightColor,
                margin: EdgeInsets.all(25.0),
                child: RotatedBox(
                    quarterTurns: 2,
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('This is rotated text')))),
            Container(
                color: Theme.of(context).highlightColor,
                margin: EdgeInsets.all(25.0),
                child: RotatedBox(
                    quarterTurns: 3,
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('This is rotated text'))))
          ],
        ),
      ]),
    ));
  }
}

class RotatedBoxDescription extends StatelessWidget {
  const RotatedBoxDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 20),
      Text('RotatedBox Widget', style: TextStyle(fontWeight: FontWeight.w800)),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
              'A widget that rotates its child by a integral number of quarter turns'),
        ),
      ),
      SizedBox(height: 20),
      Text('Syntax for RotatedBox Widget',
          style: TextStyle(fontWeight: FontWeight.w800)),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            """
                        RotatedBox(
	                        quarterTurns: <The number of clockwise quarter turns the child should be rotated>,
	                        child: <Child-Widget>
                        )
                        """,
          ),
        ),
      ),
    ]);
  }
}

class RotatedBoxCode extends CodeString {
  const RotatedBoxCode();

  @override
  String buildCodeString() {
    return """ RotatedBox(
                    quarterTurns: 3,
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('This is rotated text')
                    )   
        )""";
  }
}
