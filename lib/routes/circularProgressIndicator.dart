import 'package:flutter/material.dart';

class CircularProgressIndicatorSample extends StatefulWidget {
  const CircularProgressIndicatorSample({Key? key}) : super(key: key);

  @override
  State<CircularProgressIndicatorSample> createState() =>
      _CircularProgressIndicatorSampleState();
}

class _CircularProgressIndicatorSampleState
    extends State<CircularProgressIndicatorSample>
    with TickerProviderStateMixin {
  double _value = 0;
  late AnimationController _colorController;
  late var _colorTween;

  @override
  void initState() {
    super.initState();
    _colorController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _colorTween =
        _colorController.drive(ColorTween(begin: Colors.red, end: Colors.blue));
    _colorController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _colorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Text(
            "Indeterminate progress indicator",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                color: Colors.red,
                // backgroundColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Determinate progress indicator",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                color: Colors.red,
                // backgroundColor: Colors.white,
                value: _value / 100,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              child: Text("Increment Progress"),
              onPressed: () => setState(() {
                _value += 1;
              }),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Animated Color progress indicator",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                backgroundColor: Colors.transparent,
                valueColor: _colorTween,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class CircularProgressIndicatorDescription extends StatelessWidget {
  const CircularProgressIndicatorDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'A widget that shows progress along a line. There are two kinds of Circular progress indicators:',
            style:
                Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Determinate progress indicators have a specific value at each point in time, and the value should increase monotonically from 0.0 to 1.0, at which time the indicator is complete. To create a determinate progress indicator, use a non-null value between 0.0 and 1.0.',
            style:
                Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Indeterminate progress indicators do not have a specific value at each point in time and instead indicate that progress is being made without indicating how much progress remains. To create an indeterminate progress indicator, use a null value.',
            style:
                Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
