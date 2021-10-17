import 'package:flutter/material.dart';

class SingleChildScrollViewImplementation extends StatelessWidget {
  const SingleChildScrollViewImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      SingleChildScrollView(
        padding: EdgeInsets.all(5.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("With SingleChildScrollView"),
                SizedBox(height: 10),
                Container(
                    color: const Color(0xffeeee00),
                    width: 150.0,
                    height: 300.0,
                    child: Center(child: Text('Item 1'))),
                SizedBox(height: 10.0),
                Container(
                    color: const Color(0xffee0000),
                    width: 200.0,
                    height: 300.0,
                    child: Center(child: Text('Item 2'))),
                SizedBox(height: 10.0),
                Container(
                    color: const Color(0xff3fee00),
                    width: 100.0,
                    height: 400.0,
                    child: Center(child: Text('Item 3'))),
              ]),
        ),
      ),
      Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Without SingleChildScrollView"),
              SizedBox(height: 10),
              Container(
                  color: const Color(0xffeeee00),
                  width: 150.0,
                  height: 300.0,
                  child: Center(child: Text('Item 1'))),
              SizedBox(height: 10.0),
              Container(
                  color: const Color(0xffee0000),
                  width: 200.0,
                  height: 300.0,
                  child: Center(child: Text('Item 2'))),
              SizedBox(height: 10.0),
              Container(
                  color: const Color(0xff3fee00),
                  width: 100.0,
                  height: 400.0,
                  child: Center(child: Text('Item 3'))),
            ]),
      )
    ]));
  }
}

class SingleChildScrollViewDescription extends StatelessWidget {
  const SingleChildScrollViewDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 20),
      Text('SingleChildScrollView Widget',
          style: TextStyle(fontWeight: FontWeight.w800)),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            'A box in which a single widget can be scrolled. This widget is useful when you have a single box that will normally be entirely visible, for example a clock face in a time picker, but you need to make sure it can be scrolled if the container gets too small in one axis (the scroll direction).',
          ),
        ),
      )
    ]);
  }
}
