import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'WITHOUT WRAP',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Row(
              children: [
                buildButton('1'),
                buildButton('2'),
                buildButton('3'),
                buildButton('4'),
                buildButton('5'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'WITH WRAP',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Wrap(
              children: [
                buildButton('1'),
                buildButton('2'),
                buildButton('3'),
                buildButton('4'),
                buildButton('5'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'WRAP ALIGNMENT',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              'WrapAlignment.center',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                buildButton('1'),
                buildButton('2'),
                buildButton('3'),
                buildButton('4'),
                buildButton('5'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'RUN ALIGNMENT',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              'WrapAlignment.end',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Wrap(
              runAlignment: WrapAlignment.end,
              children: [
                buildButton('1'),
                buildButton('2'),
                buildButton('3'),
                buildButton('4'),
                buildButton('5'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'SPACING',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              'spacing: 20',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Wrap(
              spacing: 20,
              children: [
                buildButton('1'),
                buildButton('2'),
                buildButton('3'),
                buildButton('4'),
                buildButton('5'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'DIRECTION',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              'Axis.vertical',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Wrap(
              direction: Axis.vertical,
              children: [
                buildButton('1'),
                buildButton('2'),
                buildButton('3'),
                buildButton('4'),
                buildButton('5'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildButton(String text) {
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Text(
        'Button $text',
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
    onTap: () {},
  );
}

class WrapWidgetDescription extends StatelessWidget {
  const WrapWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'WRAP',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              'A Wrap lays out each child and attempts to place the child adjacent to the previous child in the main axis(mainAxis), given by DIRECTION property, leaving SPACING(also a property) space in between. If there is not enough space to fit the child, Wrap creates a new run adjacent to the existing children in the cross axis.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'WRAP ALIGNMENT',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              'We can set the alignment property to align widgets. There are few Enums, start(which is default),center, end, spaceAround, spaceBetween etc',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'RUN ALIGNMENT',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              'The runAlignment argument whose type is also WrapAlignment can be used to set how the runs should be placed in the cross axis. The list of possible values is the same as alignment.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'SPACING',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              'SPACING gives space between the childrens',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'DIRECTION',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              'DIRECTION by default is horizontal, which is no doubt the direction of axis. if we set it to Axis.vertical, axis will be vertical',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
