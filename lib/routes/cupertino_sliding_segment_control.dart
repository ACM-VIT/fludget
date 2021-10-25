import 'package:fludget/Models/codeString.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSlidingSegmentControlSample extends StatefulWidget {
  const CupertinoSlidingSegmentControlSample({Key? key}) : super(key: key);

  @override
  _CupertinoSlidingSegmentControlSampleState createState() =>
      _CupertinoSlidingSegmentControlSampleState();
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

class _CupertinoSlidingSegmentControlSampleState
    extends State<CupertinoSlidingSegmentControlSample> {
  Duration initialtimer = new Duration(); //for timer picker
  int? groupValue = 0; //for sliding segmented control

  @override
  void initState() {
    super.initState();
  }

  Widget buildSegment(String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 22, color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text("What's your favorite OS ?"),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: CupertinoSlidingSegmentedControl<int>(
                backgroundColor: CupertinoColors.white,
                thumbColor: CupertinoColors.activeGreen,
                padding: EdgeInsets.all(8),
                groupValue: groupValue,
                children: {
                  0: buildSegment("MacOS"),
                  1: buildSegment("Windows"),
                  2: buildSegment("Linux"),
                },
                onValueChanged: (value) {
                  setState(() {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    groupValue = value;
                    if (value == 0) {
                      showSnackBarMessage(context, 'I love MacOS 🤩');
                    } else if (value == 1) {
                      showSnackBarMessage(context, 'I love Windows 🤩');
                    } else if (value == 2) {
                      showSnackBarMessage(context, 'I love linux 🤩');
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CupertinoSlidingSegmentControlDescription extends StatelessWidget {
  const CupertinoSlidingSegmentControlDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              """
    An iOS 13 style segmented control.

Displays the widgets provided in the Map of children in a horizontal list. It allows the user to select between a number of mutually exclusive options, by tapping or dragging within the segmented control.

A segmented control can feature any Widget as one of the values in its Map of children. The type T is the type of the Map keys used to identify each widget and determine which widget is selected. As required by the Map class, keys must be of consistent types and must be comparable. The children argument must be an ordered Map such as a LinkedHashMap, the ordering of the keys will determine the order of the widgets in the segmented control.

The widget calls the onValueChanged callback when a valid user gesture completes on an unselected segment. The map key associated with the newly selected widget is returned in the onValueChanged callback. Typically, widgets that use a segmented control will listen for the onValueChanged callback and rebuild the segmented control with a new groupValue to update which option is currently selected.

The children will be displayed in the order of the keys in the Map, along the current TextDirection. Each child widget will have the same size. The height of the segmented control is determined by the height of the tallest child widget. The width of each child will be the intrinsic width of the widest child, or the available horizontal space divided by the number of children, which ever is smaller.

A segmented control may optionally be created with custom colors. The thumbColor, backgroundColor arguments can be used to override the segmented control's colors from its defaults.
        """,
            ),
          ],
        ),
      ),
    );
  }
}

class CupertinoSlidingSegmentControlCode extends CodeString {
  const CupertinoSlidingSegmentControlCode();
  @override
  String buildCodeString() {
    return """
CupertinoSlidingSegmentedControl<int>(
  backgroundColor: CupertinoColors.white,
  thumbColor: CupertinoColors.activeGreen,
  padding: EdgeInsets.all(8),
  groupValue: groupValue,
  children: {
    0: buildSegment("MacOS"),
    1: buildSegment("Windows"),
    2: buildSegment("Linux"),
  },
  onValueChanged: (value) {
    setState(() {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      groupValue = value;
      if (value == 0) {
        showSnackBarMessage(context, 'I love MacOS 🤩');
      } else if (value == 1) {
        showSnackBarMessage(context, 'I love Windows 🤩');
      } else if (value == 2) {
        showSnackBarMessage(context, 'I love linux 🤩');
      }
    });
  },
),
          """;
  }
}
