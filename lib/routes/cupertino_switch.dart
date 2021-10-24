import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
An iOS-style switch.

Used to toggle the on/off state of a single setting.

The switch itself does not maintain any state. Instead, when the state of the switch changes, the widget calls the onChanged callback. Most widgets that use a switch will listen for the onChanged callback and rebuild the switch with a new value to update the visual appearance of the switch.
        """,
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
 CupertinoSwitch(
  value: _lights,
  onChanged: (bool value) {
    setState(() {
      _lights = value;
    });
  },
),
          """;
  }
}
