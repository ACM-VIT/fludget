import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CupertinoActivityIndicatorSample extends StatefulWidget {
  const CupertinoActivityIndicatorSample({Key? key}) : super(key: key);

  @override
  State<CupertinoActivityIndicatorSample> createState() =>
      _CupertinoActivityIndicatorSampleState();
}

class _CupertinoActivityIndicatorSampleState
    extends State<CupertinoActivityIndicatorSample> {
  bool _animating = true;
  double _radius = 25;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text("Animating : "),
                Checkbox(
                  value: _animating,
                  onChanged: (value) {
                    setState(() {
                      _animating = value ?? false;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text("Size : "),
                Expanded(
                  child: CupertinoSlider(
                    value: _radius,
                    min: 5,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        _radius = value;
                      });
                    },
                  ),
                ),
                Text(_radius.toStringAsFixed(2)),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: CupertinoActivityIndicator(
                radius: _radius,
                animating: _animating,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CupertinoActivityIndicatorDescription extends StatelessWidget {
  const CupertinoActivityIndicatorDescription({Key? key}) : super(key: key);

  _launchURL(String url) async {
    // const url = 'https://github.com/Shah-Aayush';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            """
      An iOS-style activity indicator that spins clockwise.
      
      CupertinoActivityIndicator is the Cupertino version of the material circular progress indicator. It animates in a clockwise circle. Flutter possesses in its store a widget to perform this task with ease & perfection Using CupertinoActivityIndicator.
      """,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            child: Text("Watch video tutorial"),
            onPressed: () {
              var url = 'https://youtu.be/AENVH-ZqKDQ';
              _launchURL(url);
            },
          ),
        ],
      ),
    );
  }
}

class CupertinoActivityCode extends CodeString {
  const CupertinoActivityCode();
  @override
  String buildCodeString() {
    return """CupertinoActivityIndicator(
                radius: _radius,
                animating: _animating,
              ),""";
  }
}
