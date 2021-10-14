import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatefulWidget {
  const AbsorbPointerWidget({Key? key}) : super(key: key);

  @override
  State<AbsorbPointerWidget> createState() => _AbsorbPointerWidgetState();
}

class _AbsorbPointerWidgetState extends State<AbsorbPointerWidget> {
  int _counter = 0;
  bool _absorbingOfIncrement = false;
  bool _absorbingOfTextField = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildFirstCard(),
            SizedBox(
              height: 30,
            ),
            buildSecondCard(),
          ],
        ),
      ),
    );
  }

  Widget buildFirstCard() => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              'You have pushed the button this many times: $_counter',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AbsorbPointer(
              absorbing: _absorbingOfIncrement,
              child: ElevatedButton(
                  onPressed: () {
                    _incrementCounter();
                    final snackbar = SnackBar(
                      content: Text(
                        'Button is Pressed.'
                      ),
                      duration: Duration(seconds: 1),
                      action: SnackBarAction(
                        label: "Close",
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(16)),
                  child: Icon(
                    Icons.plus_one,
                    size: 30,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Absorbing Pointer?',
                  style: TextStyle(fontSize: 19),
                ),
                SizedBox(
                  width: 5,
                ),
                Switch(
                    value: _absorbingOfIncrement,
                    onChanged: (value) {
                      setState(() {
                        _absorbingOfIncrement = value;
                      });
                    }),
              ],
            )
          ],
        ),
      ));
  Widget buildSecondCard() => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              'AbsorbPointer as a parent of TextField.',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AbsorbPointer(
              absorbing: _absorbingOfTextField,
              child: TextField(
                enabled: !_absorbingOfTextField,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Absorbing Pointer?',
                  style: TextStyle(fontSize: 19),
                ),
                SizedBox(
                  width: 5,
                ),
                Switch(
                    value: _absorbingOfTextField,
                    onChanged: (value) {
                      setState(() {
                        _absorbingOfTextField = value;
                      });
                    }),
              ],
            )
          ],
        ),
      ));
}

class AbsorbPointerWidgetDescription extends StatelessWidget {
  const AbsorbPointerWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'AbsorbPointer is a built-in widget in flutter which absorbs pointer, in other words, it prevents its subtree from being clicked, tapped, scrolled, dragged, and respond to hover. ',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
