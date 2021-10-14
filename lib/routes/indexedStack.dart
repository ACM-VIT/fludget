import 'package:flutter/material.dart';

class IndexedStackImplemention extends StatefulWidget {
  const IndexedStackImplemention({Key? key}) : super(key: key);

  @override
  State<IndexedStackImplemention> createState() =>
      _IndexedStackImplementionState();
}

class _IndexedStackImplementionState extends State<IndexedStackImplemention> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        child: Column(
          children: <Widget>[_stackedContainers(), _navigationButtons()],
        ),
        padding: EdgeInsets.all(16.0),
      ),
    );
  }

  Widget _stackedContainers() {
    return Expanded(
      child: IndexedStack(
        alignment: Alignment.center,
        index: index,
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Index:0',
                  style: TextStyle(fontSize: 16),
                ),
              )),
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.amber,
              child: Center(
                child: Text(
                  'Index:1',
                  style: TextStyle(fontSize: 16),
                ),
              )),
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Index:2',
                  style: TextStyle(fontSize: 16),
                ),
              )),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.red),
          child: Text(
            'Red',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 0;
            });
          },
        ),
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.amber),
          child: Text(
            'Amber',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 1;
            });
          },
        ),
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.blue),
          child: Text(
            'Blue',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 2;
            });
          },
        ),
      ],
    );
  }
}

class IndexedStackDescription extends StatelessWidget {
  const IndexedStackDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'IndexedStack Widget \n',
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
                      text:
                          'A Stack that shows a single child from a list of children.\n'
                          'The displayed child is the one with the given index. The stack is always as big as the largest child.\n'
                          'An IndexedStack is a stack where only one component is shown at one time by its index.'
                          ' The stack is consistently just about as large as the biggest child. '
                          'On the off chance that the value is null, nothing is shown. '),
                  TextSpan(
                      text: '\n\nPropertise \n\n',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      )),
                  TextSpan(
                      text:
                          'index: These properties are used to the index of the child to show.\n'
                          'children: These properties are used to the List<Widget>. The widgets below this widget in the tree.\n'
                          'alignment: These properties are used to align the non-positioned and partially-positioned children in the stack.\n'
                          ' sizing: These properties are used to size the non-positioned children in the stack.\n'
                          'textDirection: These properties are used to the text direction with which to resolve alignment.'),
                  TextSpan(
                      text: '\n\nExample \n\n',
                      style: TextStyle(
                        fontSize: 22.0,
                      )),
                  TextSpan(
                      text: 'IndexedStack(\n'
                          '      index: index\n'
                          '     children: [\n'
                          '         Container(),\n'
                          '         Container()\n'
                          '         Container(),\n'
                          '      ],\n'
                          '  ),\n\n'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
