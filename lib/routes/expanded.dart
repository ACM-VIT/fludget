import 'package:flutter/material.dart';

class ExpandedImplementation extends StatelessWidget {
  const ExpandedImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expanded widget in Column',
                    ),
                    Container(
                      color: Colors.blue,
                      height: 80,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.amber,
                        width: 100,
                        child: Center(
                          child: Text("Expanded"),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      height: 80,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  'Expanded widget in Row',
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 50,
                      color: Colors.red,
                    ),
                    Expanded(
                      child: Container(
                        width: 50,
                        color: Colors.green,
                        child: Center(
                          child: Text("Expanded"),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 50,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  'Expanded widget with flex factor',
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.amber,
                        height: 100,
                        child: Center(
                          child: Text("Expanded - flex:2"),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      height: 100,
                      width: 50,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ExpandedDescription extends StatelessWidget {
  const ExpandedDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Expanded Widget \n',
              style: TextStyle(
                fontSize: 26.0,
              ),
            ),
            RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: Theme.of(context).textTheme.bodyText1,
                children: <TextSpan>[
                  TextSpan(
                    text: 'A widget that expands a child of a Row,'
                        'Column, or Flex so that the child fills the available space.\n'
                        'Using an Expanded widget makes a child of a Row, Column, or Flex expand to fill the'
                        ' available space along the main axis '
                        '(e.g., horizontally for a Row or vertically for a Column). '
                        'If multiple children are expanded, the available space is '
                        'divided among them according to the flex factor. '
                        'An Expanded widget must be a descendant of a Row, Column, or Flex, and the path from the Expanded widget to its enclosing Row, Column, or Flex must contain only StatelessWidgets or StatefulWidgets (not other kinds of widgets, like RenderObjectWidgets).',
                  ),
                  TextSpan(
                      text: '\n\nExample \n\n',
                      style: TextStyle(
                        fontSize: 22.0,
                      )),
                  TextSpan(
                      text: 'Row(\n'
                          '     children: [\n'
                          '         Container(),\n'
                          '         Expanded(\n'
                          '             flex:2\n'
                          '             child: MyWidget(),\n'
                          '         ),\n'
                          '         Container(),\n'
                          '      ],\n'
                          '  ),\n\n'),
                  TextSpan(
                      text:
                          'An Expanded widget is exactly the same thing as a Flexible widget with the fit set to FlexFit.tight. This means that the size is tightly constrained. That is, it must fill the available space. Using Flexible with FlexFit.loose would allow the children to choose their size.')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
