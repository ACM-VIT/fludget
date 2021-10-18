import 'dart:math';
import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class ListWheelScrollViewWidget extends StatefulWidget {
  const ListWheelScrollViewWidget({Key? key}) : super(key: key);

  @override
  _ListWheelScrollViewWidgetState createState() =>
      _ListWheelScrollViewWidgetState();
}

class _ListWheelScrollViewWidgetState extends State<ListWheelScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
        offAxisFraction: -0.4,
        useMagnifier: true,
        magnification: 1,
        diameterRatio: 2,
        itemExtent: 150,
        children: List<Widget>.generate(
          10,
          (index) => Container(
            height: 100,
            decoration: BoxDecoration(
              color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                "Item $index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ).toList(),
      ),
    );
  }
}

class ListWheelScrollViewDescription extends StatelessWidget {
  const ListWheelScrollViewDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              "ListWheelScrollView Widget \n",
              style: TextStyle(fontSize: 26),
            ),
            RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: [
                    TextSpan(
                      text:
                          'Flutter\'s ListWheelScrollView is a widget that puts its children in a scrollable wheel. That results in a 3D effect as if the children are rotating in a wheel.'
                          'The current selected item is the one in the center of the wheel. Below I will show you how to create a ListWheelScrollView including how to customize the look and how to handle when the selected item changes',
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class ListWheelCode extends CodeString {
  const ListWheelCode();
  @override
  String buildCodeString() {
    return """ ListWheelScrollView(
        offAxisFraction: -0.4,
        useMagnifier: true,
        magnification: 1,
        diameterRatio: 2,
        itemExtent: 150,
        children: List<Widget>.generate(
          10,
          (index) => Container(
            height: 100,
            decoration: BoxDecoration(
              color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                "Item \$index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ).toList(),
      ),
""";
  }
}
