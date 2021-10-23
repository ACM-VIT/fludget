import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTimePickerSample extends StatefulWidget {
  const CupertinoTimePickerSample({Key? key}) : super(key: key);

  @override
  _CupertinoTimePickerSampleState createState() =>
      _CupertinoTimePickerSampleState();
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

class _CupertinoTimePickerSampleState extends State<CupertinoTimePickerSample> {
  Duration initialtimer = new Duration(); //for timer picker

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: CupertinoButton(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).dialogBackgroundColor,
              ),
              child: Text(
                'Pick Time',
                style: TextStyle(
                    // color: Theme.of(context).primaryColorLight,
                    ),
              ),
            ),
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 300.0,
                      child: CupertinoTimerPicker(
                        mode: CupertinoTimerPickerMode.hms,
                        minuteInterval: 1,
                        secondInterval: 1,
                        initialTimerDuration: initialtimer,
                        onTimerDurationChanged: (Duration changedtimer) {
                          setState(() {
                            initialtimer = changedtimer;
                          });
                        },
                      ),
                    );
                  });
            },
          ),
        ),
      ),
    );
  }
}

class CupertinoTimePickerDescription extends StatelessWidget {
  const CupertinoTimePickerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            """
A countdown timer picker in iOS style.

This picker shows a countdown duration with hour, minute and second spinners. The duration is bound between 0 and 23 hours 59 minutes 59 seconds.

There are several modes of the timer picker listed in CupertinoTimerPickerMode.

The picker has a fixed size of 320 x 216, in logical pixels, with the exception of CupertinoTimerPickerMode.hms, which is 330 x 216. If the parent widget provides more space than it needs, the picker will position itself according to its alignment property.
      """,
          ),
        ],
      ),
    );
  }
}

class CupertinoTimePickerCode extends CodeString {
  const CupertinoTimePickerCode();
  @override
  String buildCodeString() {
    return """
showCupertinoModalPopup(
  context: context,
  builder: (context) {
    return Container(
      height: 300.0,
      child: CupertinoTimerPicker(
        mode: CupertinoTimerPickerMode.hms,
        minuteInterval: 1,
        secondInterval: 1,
        initialTimerDuration: initialtimer,
        onTimerDurationChanged: (Duration changedtimer) {
          setState(() {
            initialtimer = changedtimer;
          });
        },
      ),
    );
  },
)
          """;
  }
}
