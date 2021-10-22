import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:torch_light/torch_light.dart';

class CupertinoSwitchSample extends StatefulWidget {
  const CupertinoSwitchSample({Key? key}) : super(key: key);

  @override
  _CupertinoSwitchSampleState createState() => _CupertinoSwitchSampleState();
}

void showSnackBarMessage(
  var context,
  var message,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Theme.of(context).backgroundColor,
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: Theme.of(context).primaryColor,
        ),
      ),
      duration: Duration(seconds: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
    ),
  );
}

_launchURL(String url) async {
  // const url = 'https://github.com/Shah-Aayush';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _CupertinoSwitchSampleState extends State<CupertinoSwitchSample> {
  var _lights = false; //for Switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Icon(
              _lights ? Icons.lightbulb : Icons.lightbulb_outline,
              size: 300,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Switch : "),
                CupertinoSwitch(
                  value: _lights,
                  onChanged: (bool value) {
                    setState(() {
                      /*
                      //Turning on/off actual torch :
                        if (_lights) {
                          _disableTorch(context);
                        } else {
                          _enableTorch(context);
                        }
                      */
                      _lights = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /*
  _enableTorch(BuildContext context) async {
    try {
      await TorchLight.enableTorch();
    } on Exception catch (_) {
      // print(_);
      showSnackBarMessage(context, 'Could not enable actual torch');
    }
  }

  _disableTorch(BuildContext context) async {
    try {
      await TorchLight.disableTorch();
    } on Exception catch (_) {
      // print(_);
      showSnackBarMessage(context, 'Could not disable actual torch');
    }
  }
  */
}

class CupertinoSwitchDescription extends StatelessWidget {
  const CupertinoSwitchDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              """
A full-screen modal route that opens when the child is long-pressed.

When open, the CupertinoSwitch shows the child, or the widget returned by previewBuilder if given, in a large full-screen Overlay with a list of buttons specified by actions. The child/preview is placed in an Expanded widget so that it will grow to fill the Overlay if its size is unconstrained.

When closed, the CupertinoSwitch simply displays the child as if the CupertinoSwitch were not there. Sizing and positioning is unaffected. The menu can be closed like other PopupRoutes, such as by tapping the background or by calling Navigator.pop(context). Unlike PopupRoute, it can also be closed by swiping downwards.

The previewBuilder parameter is most commonly used to display a slight variation of child. See previewBuilder for an example of rounding the child's corners and allowing its aspect ratio to expand, similar to the Photos app on iOS.
        """,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text("Watch video tutorial"),
              onPressed: () {
                var url =
                    'https://www.youtube.com/watch?v=Re9xDXDi3H8&ab_channel=JohannesMilke';
                _launchURL(url);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CupertinoSwitchCode extends CodeString {
  const CupertinoSwitchCode();
  @override
  String buildCodeString() {
    return """
 Center(
  child: SizedBox(
    width: 200,
    height: 30,
    child: CupertinoSwitch(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.green, spreadRadius: 3),
          ],
        ),
        // color: Colors.yellow,
        child: Text(
          'Long press me',
          textAlign: TextAlign.center,
        ),
      ),
      actions: <Widget>[
        CupertinoSwitchAction(
          child: const Text('Action one'),
          onPressed: () {
            Navigator.pop(context);
            showSnackBarMessage(context, 'Action one chosen');
          },
        ),
        CupertinoSwitchAction(
          child: const Text('Action two'),
          onPressed: () {
            Navigator.pop(context);
            showSnackBarMessage(context, 'Action two chosen');
          },
        ),
      ],
    ),
  ),
),
          """;
  }
}
